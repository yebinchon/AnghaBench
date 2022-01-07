
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int kmem_cache_destroy (int ) ;
 int pcluster_cachep ;
 int z_erofs_workqueue ;

void z_erofs_exit_zip_subsystem(void)
{
 destroy_workqueue(z_erofs_workqueue);
 kmem_cache_destroy(pcluster_cachep);
}
