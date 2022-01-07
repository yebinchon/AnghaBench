
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg_header {int front_len; int type; } ;
struct ceph_msg {int dummy; } ;
struct ceph_connection {struct ceph_msg* in_msg; } ;


 int GFP_NOFS ;
 struct ceph_msg* ceph_msg_new (int,int,int ,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static struct ceph_msg *mds_alloc_msg(struct ceph_connection *con,
    struct ceph_msg_header *hdr, int *skip)
{
 struct ceph_msg *msg;
 int type = (int) le16_to_cpu(hdr->type);
 int front_len = (int) le32_to_cpu(hdr->front_len);

 if (con->in_msg)
  return con->in_msg;

 *skip = 0;
 msg = ceph_msg_new(type, front_len, GFP_NOFS, 0);
 if (!msg) {
  pr_err("unable to allocate msg type %d len %d\n",
         type, front_len);
  return ((void*)0);
 }

 return msg;
}
