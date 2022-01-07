
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int dummy; } ;
struct TYPE_2__ {int (* unmap ) (struct xenbus_device*,void*) ;} ;


 TYPE_1__* ring_ops ;
 int stub1 (struct xenbus_device*,void*) ;

int xenbus_unmap_ring_vfree(struct xenbus_device *dev, void *vaddr)
{
 return ring_ops->unmap(dev, vaddr);
}
