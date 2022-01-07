
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {scalar_t__ i_fscache_gen; scalar_t__ i_rdcache_gen; } ;



__attribute__((used)) static inline bool cache_valid(struct ceph_inode_info *ci)
{
 return ci->i_fscache_gen == ci->i_rdcache_gen;
}
