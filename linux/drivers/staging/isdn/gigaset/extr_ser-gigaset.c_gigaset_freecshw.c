
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ser; } ;
struct cardstate {TYPE_2__ hw; int write_tasklet; } ;
struct TYPE_3__ {int dev; } ;


 int platform_device_unregister (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void gigaset_freecshw(struct cardstate *cs)
{
 tasklet_kill(&cs->write_tasklet);
 if (!cs->hw.ser)
  return;
 platform_device_unregister(&cs->hw.ser->dev);
}
