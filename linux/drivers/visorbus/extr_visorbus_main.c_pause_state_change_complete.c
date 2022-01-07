
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int pausing; } ;


 int segment_state_standby ;
 int visorbus_device_changestate_response (struct visor_device*,int,int ) ;

__attribute__((used)) static void pause_state_change_complete(struct visor_device *dev, int status)
{
 if (!dev->pausing)
  return;

 dev->pausing = 0;
 visorbus_device_changestate_response(dev, status,
          segment_state_standby);
}
