
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct ceph_inode_info {int vfs_inode; void* i_max_files; void* i_max_bytes; } ;


 int __ceph_has_any_quota (struct ceph_inode_info*) ;
 int ceph_adjust_quota_realms_count (int *,int) ;

__attribute__((used)) static inline void __ceph_update_quota(struct ceph_inode_info *ci,
           u64 max_bytes, u64 max_files)
{
 bool had_quota, has_quota;
 had_quota = __ceph_has_any_quota(ci);
 ci->i_max_bytes = max_bytes;
 ci->i_max_files = max_files;
 has_quota = __ceph_has_any_quota(ci);

 if (had_quota != has_quota)
  ceph_adjust_quota_realms_count(&ci->vfs_inode, has_quota);
}
