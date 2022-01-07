
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_truncate_mutex; int i_ceph_lock; int i_rdcache_gen; int i_fscache_gen; int fscache; int i_vino; } ;


 scalar_t__ cache_valid (struct ceph_inode_info*) ;
 scalar_t__ fscache_check_consistency (int ,int *) ;
 int fscache_invalidate (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_fscache_revalidate_cookie(struct ceph_inode_info *ci)
{
 if (cache_valid(ci))
  return;



 mutex_lock(&ci->i_truncate_mutex);
 if (!cache_valid(ci)) {
  if (fscache_check_consistency(ci->fscache, &ci->i_vino))
   fscache_invalidate(ci->fscache);
  spin_lock(&ci->i_ceph_lock);
  ci->i_fscache_gen = ci->i_rdcache_gen;
  spin_unlock(&ci->i_ceph_lock);
 }
 mutex_unlock(&ci->i_truncate_mutex);
}
