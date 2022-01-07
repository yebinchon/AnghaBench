
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_mds_request {scalar_t__ r_tid; int r_err; scalar_t__ r_op; struct inode* r_unsafe_dir; int r_gid; int r_uid; scalar_t__ r_num_caps; int r_caps_reservation; } ;
struct ceph_mds_client {scalar_t__ last_tid; scalar_t__ oldest_tid; int request_tree; } ;


 scalar_t__ CEPH_MDS_OP_SETFILELOCK ;
 int ceph_mdsc_get_request (struct ceph_mds_request*) ;
 int ceph_reserve_caps (struct ceph_mds_client*,int *,scalar_t__) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int dout (char*,struct ceph_mds_request*,scalar_t__) ;
 int ihold (struct inode*) ;
 int insert_request (int *,struct ceph_mds_request*) ;
 int pr_err (char*,struct ceph_mds_request*,int) ;

__attribute__((used)) static void __register_request(struct ceph_mds_client *mdsc,
          struct ceph_mds_request *req,
          struct inode *dir)
{
 int ret = 0;

 req->r_tid = ++mdsc->last_tid;
 if (req->r_num_caps) {
  ret = ceph_reserve_caps(mdsc, &req->r_caps_reservation,
     req->r_num_caps);
  if (ret < 0) {
   pr_err("__register_request %p "
          "failed to reserve caps: %d\n", req, ret);

   req->r_err = ret;
   return;
  }
 }
 dout("__register_request %p tid %lld\n", req, req->r_tid);
 ceph_mdsc_get_request(req);
 insert_request(&mdsc->request_tree, req);

 req->r_uid = current_fsuid();
 req->r_gid = current_fsgid();

 if (mdsc->oldest_tid == 0 && req->r_op != CEPH_MDS_OP_SETFILELOCK)
  mdsc->oldest_tid = req->r_tid;

 if (dir) {
  ihold(dir);
  req->r_unsafe_dir = dir;
 }
}
