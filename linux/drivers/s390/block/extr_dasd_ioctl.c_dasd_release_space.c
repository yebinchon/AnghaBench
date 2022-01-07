
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_data_t {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; } ;
struct TYPE_2__ {int (* release_space ) (struct dasd_device*,struct format_data_t*) ;int (* is_ese ) (struct dasd_device*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct dasd_device*) ;
 int stub2 (struct dasd_device*,struct format_data_t*) ;

__attribute__((used)) static int dasd_release_space(struct dasd_device *device,
         struct format_data_t *rdata)
{
 if (!device->discipline->is_ese && !device->discipline->is_ese(device))
  return -ENOTSUPP;
 if (!device->discipline->release_space)
  return -ENOTSUPP;

 return device->discipline->release_space(device, rdata);
}
