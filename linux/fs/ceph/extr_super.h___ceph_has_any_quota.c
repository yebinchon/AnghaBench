
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {scalar_t__ i_max_bytes; scalar_t__ i_max_files; } ;



__attribute__((used)) static inline bool __ceph_has_any_quota(struct ceph_inode_info *ci)
{
 return ci->i_max_files || ci->i_max_bytes;
}
