
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dfs_cache_slab ;
 int kmem_cache_destroy (int ) ;
 int rcu_barrier () ;

__attribute__((used)) static inline void destroy_slab_cache(void)
{
 rcu_barrier();
 kmem_cache_destroy(dfs_cache_slab);
}
