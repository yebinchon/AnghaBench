
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * asd_ascb_cache ;
 int * asd_dma_token_cache ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void asd_destroy_global_caches(void)
{
 kmem_cache_destroy(asd_dma_token_cache);
 asd_dma_token_cache = ((void*)0);

 kmem_cache_destroy(asd_ascb_cache);
 asd_ascb_cache = ((void*)0);
}
