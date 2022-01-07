
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int space_allocated; } ;
struct dasd_eckd_private {TYPE_1__ vsq; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;


 int dasd_eckd_read_vol_info (struct dasd_device*) ;

__attribute__((used)) static int dasd_eckd_space_allocated(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int rc;

 rc = dasd_eckd_read_vol_info(device);

 return rc ? : private->vsq.space_allocated;
}
