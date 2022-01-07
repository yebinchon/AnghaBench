
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {scalar_t__ fcx_max_data; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;



__attribute__((used)) static int dasd_eckd_hpf_enabled(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;

 return private->fcx_max_data ? 1 : 0;
}
