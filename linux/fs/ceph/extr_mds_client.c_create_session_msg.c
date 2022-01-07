
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct ceph_mds_session_head* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mds_session_head {int seq; int op; } ;


 int CEPH_MSG_CLIENT_SESSION ;
 int GFP_NOFS ;
 struct ceph_msg* ceph_msg_new (int ,int,int ,int) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static struct ceph_msg *create_session_msg(u32 op, u64 seq)
{
 struct ceph_msg *msg;
 struct ceph_mds_session_head *h;

 msg = ceph_msg_new(CEPH_MSG_CLIENT_SESSION, sizeof(*h), GFP_NOFS,
      0);
 if (!msg) {
  pr_err("create_session_msg ENOMEM creating msg\n");
  return ((void*)0);
 }
 h = msg->front.iov_base;
 h->op = cpu_to_le32(op);
 h->seq = cpu_to_le64(seq);

 return msg;
}
