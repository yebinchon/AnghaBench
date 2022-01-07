
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ese; } ;
struct TYPE_4__ {TYPE_1__ vol_info; } ;
struct dasd_eckd_private {TYPE_2__ vsq; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;



__attribute__((used)) static int dasd_eckd_is_ese(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;

 return private->vsq.vol_info.ese;
}
