
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct ccwgroup_driver {TYPE_1__ driver; } ;


 int ccwgroup_bus_type ;
 int driver_register (TYPE_1__*) ;

int ccwgroup_driver_register(struct ccwgroup_driver *cdriver)
{

 cdriver->driver.bus = &ccwgroup_bus_type;

 return driver_register(&cdriver->driver);
}
