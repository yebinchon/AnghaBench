
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ceph_mds_reply_info_parsed {int dir_end; int dir_complete; int hash_order; int offset_hash; scalar_t__ dir_entries; unsigned long dir_buf_size; scalar_t__ dir_nr; int dir_dir; } ;
struct ceph_mds_reply_dir_entry {int name_len; scalar_t__ offset; int inode; int lease; void* name; } ;
typedef int num ;


 int BUG_ON (int) ;
 int CEPH_READDIR_FRAG_COMPLETE ;
 int CEPH_READDIR_FRAG_END ;
 int CEPH_READDIR_HASH_ORDER ;
 int CEPH_READDIR_OFFSET_HASH ;
 int EIO ;
 int WARN_ON (int) ;
 int bad ;
 int ceph_decode_16 (void**) ;
 scalar_t__ ceph_decode_32 (void**) ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int dout (char*,int,void*) ;
 int parse_reply_info_dir (void**,void*,int *,int ) ;
 int parse_reply_info_in (void**,void*,int *,int ) ;
 int parse_reply_info_lease (void**,void*,int *,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int parse_reply_info_readdir(void **p, void *end,
    struct ceph_mds_reply_info_parsed *info,
    u64 features)
{
 u32 num, i = 0;
 int err;

 err = parse_reply_info_dir(p, end, &info->dir_dir, features);
 if (err < 0)
  goto out_bad;

 ceph_decode_need(p, end, sizeof(num) + 2, bad);
 num = ceph_decode_32(p);
 {
  u16 flags = ceph_decode_16(p);
  info->dir_end = !!(flags & CEPH_READDIR_FRAG_END);
  info->dir_complete = !!(flags & CEPH_READDIR_FRAG_COMPLETE);
  info->hash_order = !!(flags & CEPH_READDIR_HASH_ORDER);
  info->offset_hash = !!(flags & CEPH_READDIR_OFFSET_HASH);
 }
 if (num == 0)
  goto done;

 BUG_ON(!info->dir_entries);
 if ((unsigned long)(info->dir_entries + num) >
     (unsigned long)info->dir_entries + info->dir_buf_size) {
  pr_err("dir contents are larger than expected\n");
  WARN_ON(1);
  goto bad;
 }

 info->dir_nr = num;
 while (num) {
  struct ceph_mds_reply_dir_entry *rde = info->dir_entries + i;

  ceph_decode_32_safe(p, end, rde->name_len, bad);
  ceph_decode_need(p, end, rde->name_len, bad);
  rde->name = *p;
  *p += rde->name_len;
  dout("parsed dir dname '%.*s'\n", rde->name_len, rde->name);


  err = parse_reply_info_lease(p, end, &rde->lease, features);
  if (err)
   goto out_bad;

  err = parse_reply_info_in(p, end, &rde->inode, features);
  if (err < 0)
   goto out_bad;

  rde->offset = 0;
  i++;
  num--;
 }

done:

 *p = end;
 return 0;

bad:
 err = -EIO;
out_bad:
 pr_err("problem parsing dir contents %d\n", err);
 return err;
}
