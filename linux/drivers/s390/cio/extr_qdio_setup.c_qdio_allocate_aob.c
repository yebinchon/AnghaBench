
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qaob {int dummy; } ;


 int GFP_ATOMIC ;
 struct qaob* kmem_cache_zalloc (int ,int ) ;
 int qdio_aob_cache ;

struct qaob *qdio_allocate_aob(void)
{
 return kmem_cache_zalloc(qdio_aob_cache, GFP_ATOMIC);
}
