
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ceph_mds_reply_info_parsed {int targeti; TYPE_1__* head; int dlease; int dname_len; void* dname; int dirfrag; int diri; } ;
struct TYPE_2__ {scalar_t__ is_target; scalar_t__ is_dentry; } ;


 int EIO ;
 int bad ;
 int ceph_decode_32_safe (void**,void*,int ,int ) ;
 int ceph_decode_need (void**,void*,int ,int ) ;
 int parse_reply_info_dir (void**,void*,int *,int ) ;
 int parse_reply_info_in (void**,void*,int *,int ) ;
 int parse_reply_info_lease (void**,void*,int *,int ) ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_reply_info_trace(void **p, void *end,
      struct ceph_mds_reply_info_parsed *info,
      u64 features)
{
 int err;

 if (info->head->is_dentry) {
  err = parse_reply_info_in(p, end, &info->diri, features);
  if (err < 0)
   goto out_bad;

  err = parse_reply_info_dir(p, end, &info->dirfrag, features);
  if (err < 0)
   goto out_bad;

  ceph_decode_32_safe(p, end, info->dname_len, bad);
  ceph_decode_need(p, end, info->dname_len, bad);
  info->dname = *p;
  *p += info->dname_len;

  err = parse_reply_info_lease(p, end, &info->dlease, features);
  if (err < 0)
   goto out_bad;
 }

 if (info->head->is_target) {
  err = parse_reply_info_in(p, end, &info->targeti, features);
  if (err < 0)
   goto out_bad;
 }

 if (unlikely(*p != end))
  goto bad;
 return 0;

bad:
 err = -EIO;
out_bad:
 pr_err("problem parsing mds trace %d\n", err);
 return err;
}
