
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {TYPE_2__* base_discipline; TYPE_1__* discipline; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int owner; int (* uncheck_device ) (struct dasd_device*) ;} ;


 int module_put (int ) ;
 int stub1 (struct dasd_device*) ;

void dasd_generic_free_discipline(struct dasd_device *device)
{

 if (device->discipline) {
  if (device->discipline->uncheck_device)
   device->discipline->uncheck_device(device);
  module_put(device->discipline->owner);
  device->discipline = ((void*)0);
 }
 if (device->base_discipline) {
  module_put(device->base_discipline->owner);
  device->base_discipline = ((void*)0);
 }
}
