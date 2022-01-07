
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int logical_capacity; } ;
struct dasd_eckd_private {TYPE_1__ vsq; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;



__attribute__((used)) static int dasd_eckd_logical_capacity(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;

 return private->vsq.logical_capacity;
}
