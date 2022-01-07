
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {size_t phandle; } ;
typedef size_t phandle ;


 int of_node_put (struct device_node*) ;
 struct device_node** phandle_cache ;
 size_t phandle_cache_mask ;

void __of_free_phandle_cache_entry(phandle handle)
{
 phandle masked_handle;
 struct device_node *np;

 if (!handle)
  return;

 masked_handle = handle & phandle_cache_mask;

 if (phandle_cache) {
  np = phandle_cache[masked_handle];
  if (np && handle == np->phandle) {
   of_node_put(np);
   phandle_cache[masked_handle] = ((void*)0);
  }
 }
}
