
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; int * bus; } ;
struct rpmsg_driver {TYPE_1__ drv; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int rpmsg_bus ;

int __register_rpmsg_driver(struct rpmsg_driver *rpdrv, struct module *owner)
{
 rpdrv->drv.bus = &rpmsg_bus;
 rpdrv->drv.owner = owner;
 return driver_register(&rpdrv->drv);
}
