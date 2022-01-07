
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
struct TYPE_3__ {int tid; } ;
struct ceph_msg {TYPE_2__ front; TYPE_1__ hdr; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_request {scalar_t__ r_num_fwd; scalar_t__ r_resend_mds; scalar_t__ r_attempts; int r_req_flags; scalar_t__ r_err; } ;
struct ceph_mds_client {int mutex; } ;


 int BUG_ON (scalar_t__) ;
 int CEPH_MDS_R_ABORTED ;
 int CEPH_MDS_R_GOT_RESULT ;
 int EINVAL ;
 int __do_request (struct ceph_mds_client*,struct ceph_mds_request*) ;
 int __unregister_request (struct ceph_mds_client*,struct ceph_mds_request*) ;
 int bad ;
 scalar_t__ ceph_decode_32 (void**) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 int dout (char*,int ,...) ;
 int le64_to_cpu (int ) ;
 struct ceph_mds_request* lookup_get_request (struct ceph_mds_client*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int put_request_session (struct ceph_mds_request*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_forward(struct ceph_mds_client *mdsc,
      struct ceph_mds_session *session,
      struct ceph_msg *msg)
{
 struct ceph_mds_request *req;
 u64 tid = le64_to_cpu(msg->hdr.tid);
 u32 next_mds;
 u32 fwd_seq;
 int err = -EINVAL;
 void *p = msg->front.iov_base;
 void *end = p + msg->front.iov_len;

 ceph_decode_need(&p, end, 2*sizeof(u32), bad);
 next_mds = ceph_decode_32(&p);
 fwd_seq = ceph_decode_32(&p);

 mutex_lock(&mdsc->mutex);
 req = lookup_get_request(mdsc, tid);
 if (!req) {
  dout("forward tid %llu to mds%d - req dne\n", tid, next_mds);
  goto out;
 }

 if (test_bit(CEPH_MDS_R_ABORTED, &req->r_req_flags)) {
  dout("forward tid %llu aborted, unregistering\n", tid);
  __unregister_request(mdsc, req);
 } else if (fwd_seq <= req->r_num_fwd) {
  dout("forward tid %llu to mds%d - old seq %d <= %d\n",
       tid, next_mds, req->r_num_fwd, fwd_seq);
 } else {

  dout("forward tid %llu to mds%d (we resend)\n", tid, next_mds);
  BUG_ON(req->r_err);
  BUG_ON(test_bit(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags));
  req->r_attempts = 0;
  req->r_num_fwd = fwd_seq;
  req->r_resend_mds = next_mds;
  put_request_session(req);
  __do_request(mdsc, req);
 }
 ceph_mdsc_put_request(req);
out:
 mutex_unlock(&mdsc->mutex);
 return;

bad:
 pr_err("mdsc_handle_forward decode error err=%d\n", err);
}
