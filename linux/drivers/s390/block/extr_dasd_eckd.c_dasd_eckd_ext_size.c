
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size_16M; scalar_t__ size_1G; } ;
struct TYPE_3__ {int extent_size_valid; } ;
struct dasd_ext_pool_sum {TYPE_2__ extent_size; TYPE_1__ flags; } ;
struct dasd_eckd_private {struct dasd_ext_pool_sum eps; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;



__attribute__((used)) static int dasd_eckd_ext_size(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 struct dasd_ext_pool_sum eps = private->eps;

 if (!eps.flags.extent_size_valid)
  return 0;
 if (eps.extent_size.size_1G)
  return 1113;
 if (eps.extent_size.size_16M)
  return 21;

 return 0;
}
