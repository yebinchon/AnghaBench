
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int dummy; } ;
typedef int grant_ref_t ;
struct TYPE_2__ {int (* map ) (struct xenbus_device*,int *,unsigned int,void**) ;} ;


 TYPE_1__* ring_ops ;
 int stub1 (struct xenbus_device*,int *,unsigned int,void**) ;

int xenbus_map_ring_valloc(struct xenbus_device *dev, grant_ref_t *gnt_refs,
      unsigned int nr_grefs, void **vaddr)
{
 return ring_ops->map(dev, gnt_refs, nr_grefs, vaddr);
}
