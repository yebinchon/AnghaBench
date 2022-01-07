
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_mds_reply_info_parsed {int has_create_ino; int ino; } ;


 int CEPH_FEATURE_REPLY_CREATE_INODE ;
 int EIO ;
 int bad ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;

__attribute__((used)) static int parse_reply_info_create(void **p, void *end,
      struct ceph_mds_reply_info_parsed *info,
      u64 features)
{
 if (features == (u64)-1 ||
     (features & CEPH_FEATURE_REPLY_CREATE_INODE)) {

  if (*p == end) {
   info->has_create_ino = 0;
  } else {
   info->has_create_ino = 1;
   ceph_decode_64_safe(p, end, info->ino, bad);
  }
 } else {
  if (*p != end)
   goto bad;
 }


 *p = end;
 return 0;
bad:
 return -EIO;
}
