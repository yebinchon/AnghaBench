
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* visorbus_state_complete_func ) (struct visor_device*,int ) ;
struct visorhba_devdata {int dummy; } ;
struct visor_device {int device; } ;


 struct visorhba_devdata* dev_get_drvdata (int *) ;
 int visorhba_serverdown (struct visorhba_devdata*) ;

__attribute__((used)) static int visorhba_pause(struct visor_device *dev,
     visorbus_state_complete_func complete_func)
{
 struct visorhba_devdata *devdata = dev_get_drvdata(&dev->device);

 visorhba_serverdown(devdata);
 complete_func(dev, 0);
 return 0;
}
