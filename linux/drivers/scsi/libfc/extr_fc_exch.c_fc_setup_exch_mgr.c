
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int create_singlethread_workqueue (char*) ;
 int fc_cpu_mask ;
 int fc_cpu_order ;
 int fc_em_cachep ;
 int fc_exch_workqueue ;
 int ilog2 (int ) ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int nr_cpu_ids ;
 int roundup_pow_of_two (int ) ;

int fc_setup_exch_mgr(void)
{
 fc_em_cachep = kmem_cache_create("libfc_em", sizeof(struct fc_exch),
      0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!fc_em_cachep)
  return -ENOMEM;
 fc_cpu_order = ilog2(roundup_pow_of_two(nr_cpu_ids));
 fc_cpu_mask = (1 << fc_cpu_order) - 1;

 fc_exch_workqueue = create_singlethread_workqueue("fc_exch_workqueue");
 if (!fc_exch_workqueue)
  goto err;
 return 0;
err:
 kmem_cache_destroy(fc_em_cachep);
 return -ENOMEM;
}
