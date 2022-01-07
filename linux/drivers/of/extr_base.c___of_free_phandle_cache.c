
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int kfree (int *) ;
 int of_node_put (int ) ;
 int * phandle_cache ;
 size_t phandle_cache_mask ;

__attribute__((used)) static void __of_free_phandle_cache(void)
{
 u32 cache_entries = phandle_cache_mask + 1;
 u32 k;

 if (!phandle_cache)
  return;

 for (k = 0; k < cache_entries; k++)
  of_node_put(phandle_cache[k]);

 kfree(phandle_cache);
 phandle_cache = ((void*)0);
}
