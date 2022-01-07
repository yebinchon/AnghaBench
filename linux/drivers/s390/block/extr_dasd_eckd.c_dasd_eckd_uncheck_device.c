
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {int * conf_data; scalar_t__ conf_len; int * gneq; int * vdsneq; int * sneq; int * ned; } ;
struct dasd_device {TYPE_1__* path; struct dasd_eckd_private* private; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ chpid; scalar_t__ ssid; scalar_t__ cssid; int * conf_data; } ;


 int dasd_alias_disconnect_device_from_lcu (struct dasd_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void dasd_eckd_uncheck_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int i;

 if (!private)
  return;

 dasd_alias_disconnect_device_from_lcu(device);
 private->ned = ((void*)0);
 private->sneq = ((void*)0);
 private->vdsneq = ((void*)0);
 private->gneq = ((void*)0);
 private->conf_len = 0;
 for (i = 0; i < 8; i++) {
  kfree(device->path[i].conf_data);
  if ((__u8 *)device->path[i].conf_data ==
      private->conf_data) {
   private->conf_data = ((void*)0);
   private->conf_len = 0;
  }
  device->path[i].conf_data = ((void*)0);
  device->path[i].cssid = 0;
  device->path[i].ssid = 0;
  device->path[i].chpid = 0;
 }
 kfree(private->conf_data);
 private->conf_data = ((void*)0);
}
