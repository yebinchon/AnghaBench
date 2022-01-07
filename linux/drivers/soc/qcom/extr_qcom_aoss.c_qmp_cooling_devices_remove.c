
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qmp {TYPE_1__* cooling_devs; } ;
struct TYPE_2__ {int cdev; } ;


 int QMP_NUM_COOLING_RESOURCES ;
 int thermal_cooling_device_unregister (int ) ;

__attribute__((used)) static void qmp_cooling_devices_remove(struct qmp *qmp)
{
 int i;

 for (i = 0; i < QMP_NUM_COOLING_RESOURCES; i++)
  thermal_cooling_device_unregister(qmp->cooling_devs[i].cdev);
}
