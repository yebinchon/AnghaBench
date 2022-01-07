
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {scalar_t__ state; scalar_t__ target; TYPE_2__* cdev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EAGAIN ;
 int KOBJ_CHANGE ;
 int dasd_decrease_state (struct dasd_device*) ;
 int dasd_increase_state (struct dasd_device*) ;
 int dasd_init_waitq ;
 int kobject_uevent (int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void dasd_change_state(struct dasd_device *device)
{
 int rc;

 if (device->state == device->target)

  return;
 if (device->state < device->target)
  rc = dasd_increase_state(device);
 else
  rc = dasd_decrease_state(device);
 if (rc == -EAGAIN)
  return;
 if (rc)
  device->target = device->state;


 kobject_uevent(&device->cdev->dev.kobj, KOBJ_CHANGE);

 if (device->state == device->target)
  wake_up(&dasd_init_waitq);
}
