
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mds_reply_info_parsed {void* snapblob; scalar_t__ snapblob_len; void* head; } ;
struct ceph_mds_reply_head {int dummy; } ;


 int EIO ;
 int bad ;
 int ceph_decode_32_safe (void**,void*,scalar_t__,int ) ;
 int ceph_decode_need (void**,void*,scalar_t__,int ) ;
 int parse_reply_info_extra (void**,void*,struct ceph_mds_reply_info_parsed*,int ) ;
 int parse_reply_info_trace (void**,void*,struct ceph_mds_reply_info_parsed*,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int parse_reply_info(struct ceph_msg *msg,
       struct ceph_mds_reply_info_parsed *info,
       u64 features)
{
 void *p, *end;
 u32 len;
 int err;

 info->head = msg->front.iov_base;
 p = msg->front.iov_base + sizeof(struct ceph_mds_reply_head);
 end = p + msg->front.iov_len - sizeof(struct ceph_mds_reply_head);


 ceph_decode_32_safe(&p, end, len, bad);
 if (len > 0) {
  ceph_decode_need(&p, end, len, bad);
  err = parse_reply_info_trace(&p, p+len, info, features);
  if (err < 0)
   goto out_bad;
 }


 ceph_decode_32_safe(&p, end, len, bad);
 if (len > 0) {
  ceph_decode_need(&p, end, len, bad);
  err = parse_reply_info_extra(&p, p+len, info, features);
  if (err < 0)
   goto out_bad;
 }


 ceph_decode_32_safe(&p, end, len, bad);
 info->snapblob_len = len;
 info->snapblob = p;
 p += len;

 if (p != end)
  goto bad;
 return 0;

bad:
 err = -EIO;
out_bad:
 pr_err("mds parse_reply err %d\n", err);
 return err;
}
