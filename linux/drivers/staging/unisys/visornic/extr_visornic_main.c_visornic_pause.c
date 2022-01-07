
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visorbus_state_complete_func ;
struct visornic_devdata {int dummy; } ;
struct visor_device {int device; } ;


 struct visornic_devdata* dev_get_drvdata (int *) ;
 int visornic_serverdown (struct visornic_devdata*,int ) ;

__attribute__((used)) static int visornic_pause(struct visor_device *dev,
     visorbus_state_complete_func complete_func)
{
 struct visornic_devdata *devdata = dev_get_drvdata(&dev->device);

 visornic_serverdown(devdata, complete_func);
 return 0;
}
