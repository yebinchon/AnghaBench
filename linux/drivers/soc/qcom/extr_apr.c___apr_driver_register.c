
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; int * bus; } ;
struct apr_driver {TYPE_1__ driver; } ;


 int aprbus ;
 int driver_register (TYPE_1__*) ;

int __apr_driver_register(struct apr_driver *drv, struct module *owner)
{
 drv->driver.bus = &aprbus;
 drv->driver.owner = owner;

 return driver_register(&drv->driver);
}
