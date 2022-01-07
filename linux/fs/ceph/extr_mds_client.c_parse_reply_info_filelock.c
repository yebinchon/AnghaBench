
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_mds_reply_info_parsed {void* filelock_reply; } ;


 int EIO ;

__attribute__((used)) static int parse_reply_info_filelock(void **p, void *end,
         struct ceph_mds_reply_info_parsed *info,
         u64 features)
{
 if (*p + sizeof(*info->filelock_reply) > end)
  goto bad;

 info->filelock_reply = *p;


 *p = end;
 return 0;
bad:
 return -EIO;
}
