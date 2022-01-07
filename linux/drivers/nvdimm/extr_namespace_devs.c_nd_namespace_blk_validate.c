
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nd_namespace_blk {TYPE_1__ common; } ;
typedef int resource_size_t ;


 int __nd_namespace_blk_validate (struct nd_namespace_blk*) ;
 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;

resource_size_t nd_namespace_blk_validate(struct nd_namespace_blk *nsblk)
{
 resource_size_t size;

 nvdimm_bus_lock(&nsblk->common.dev);
 size = __nd_namespace_blk_validate(nsblk);
 nvdimm_bus_unlock(&nsblk->common.dev);

 return size;
}
