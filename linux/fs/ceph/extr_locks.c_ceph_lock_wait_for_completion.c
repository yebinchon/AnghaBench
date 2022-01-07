
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ rule; scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ filelock_change; } ;
struct ceph_mds_request {scalar_t__ r_op; int r_err; int r_num_caps; int r_safe_completion; TYPE_2__ r_args; struct inode* r_inode; int r_session; int r_fill_mutex; int r_req_flags; int r_tid; int r_completion; } ;
struct ceph_mds_client {int mutex; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_LOCK_FCNTL ;
 int CEPH_LOCK_FCNTL_INTR ;
 scalar_t__ CEPH_LOCK_FLOCK ;
 int CEPH_LOCK_FLOCK_INTR ;
 scalar_t__ CEPH_LOCK_UNLOCK ;
 scalar_t__ CEPH_MDS_OP_SETFILELOCK ;
 int CEPH_MDS_R_ABORTED ;
 int CEPH_MDS_R_GOT_RESULT ;
 int ERESTARTSYS ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int USE_AUTH_MDS ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,scalar_t__,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 int dout (char*,int ) ;
 int ihold (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_interruptible (int *) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static int ceph_lock_wait_for_completion(struct ceph_mds_client *mdsc,
                                         struct ceph_mds_request *req)
{
 struct ceph_mds_request *intr_req;
 struct inode *inode = req->r_inode;
 int err, lock_type;

 BUG_ON(req->r_op != CEPH_MDS_OP_SETFILELOCK);
 if (req->r_args.filelock_change.rule == CEPH_LOCK_FCNTL)
  lock_type = CEPH_LOCK_FCNTL_INTR;
 else if (req->r_args.filelock_change.rule == CEPH_LOCK_FLOCK)
  lock_type = CEPH_LOCK_FLOCK_INTR;
 else
  BUG_ON(1);
 BUG_ON(req->r_args.filelock_change.type == CEPH_LOCK_UNLOCK);

 err = wait_for_completion_interruptible(&req->r_completion);
 if (!err)
  return 0;

 dout("ceph_lock_wait_for_completion: request %llu was interrupted\n",
      req->r_tid);

 mutex_lock(&mdsc->mutex);
 if (test_bit(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags)) {
  err = 0;
 } else {





  mutex_lock(&req->r_fill_mutex);
  req->r_err = err;
  set_bit(CEPH_MDS_R_ABORTED, &req->r_req_flags);
  mutex_unlock(&req->r_fill_mutex);

  if (!req->r_session) {

   err = 0;
  }
 }
 mutex_unlock(&mdsc->mutex);
 if (!err)
  return 0;

 intr_req = ceph_mdsc_create_request(mdsc, CEPH_MDS_OP_SETFILELOCK,
         USE_AUTH_MDS);
 if (IS_ERR(intr_req))
  return PTR_ERR(intr_req);

 intr_req->r_inode = inode;
 ihold(inode);
 intr_req->r_num_caps = 1;

 intr_req->r_args.filelock_change = req->r_args.filelock_change;
 intr_req->r_args.filelock_change.rule = lock_type;
 intr_req->r_args.filelock_change.type = CEPH_LOCK_UNLOCK;

 err = ceph_mdsc_do_request(mdsc, inode, intr_req);
 ceph_mdsc_put_request(intr_req);

 if (err && err != -ERESTARTSYS)
  return err;

 wait_for_completion_killable(&req->r_safe_completion);
 return 0;
}
