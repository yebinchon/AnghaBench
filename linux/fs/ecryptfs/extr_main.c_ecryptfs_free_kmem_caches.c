
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_cache_info {int * cache; } ;


 int ARRAY_SIZE (struct ecryptfs_cache_info*) ;
 struct ecryptfs_cache_info* ecryptfs_cache_infos ;
 int kmem_cache_destroy (int ) ;
 int rcu_barrier () ;

__attribute__((used)) static void ecryptfs_free_kmem_caches(void)
{
 int i;





 rcu_barrier();

 for (i = 0; i < ARRAY_SIZE(ecryptfs_cache_infos); i++) {
  struct ecryptfs_cache_info *info;

  info = &ecryptfs_cache_infos[i];
  kmem_cache_destroy(*(info->cache));
 }
}
