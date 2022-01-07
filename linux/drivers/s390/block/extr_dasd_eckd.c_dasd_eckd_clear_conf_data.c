
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {scalar_t__ conf_len; int * conf_data; } ;
struct dasd_device {TYPE_1__* path; struct dasd_eckd_private* private; } ;
struct TYPE_2__ {scalar_t__ chpid; scalar_t__ ssid; scalar_t__ cssid; int * conf_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void dasd_eckd_clear_conf_data(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int i;

 private->conf_data = ((void*)0);
 private->conf_len = 0;
 for (i = 0; i < 8; i++) {
  kfree(device->path[i].conf_data);
  device->path[i].conf_data = ((void*)0);
  device->path[i].cssid = 0;
  device->path[i].ssid = 0;
  device->path[i].chpid = 0;
 }
}
