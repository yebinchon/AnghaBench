
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visorbus_state_complete_func ;
struct visorhba_devdata {int serverdown; int serverchangingstate; int thread; } ;
struct visor_device {int device; } ;


 int EINVAL ;
 struct visorhba_devdata* dev_get_drvdata (int *) ;
 int process_incoming_rsps ;
 int visor_thread_start (int ,struct visorhba_devdata*,char*) ;

__attribute__((used)) static int visorhba_resume(struct visor_device *dev,
      visorbus_state_complete_func complete_func)
{
 struct visorhba_devdata *devdata;

 devdata = dev_get_drvdata(&dev->device);
 if (!devdata)
  return -EINVAL;

 if (devdata->serverdown && !devdata->serverchangingstate)
  devdata->serverchangingstate = 1;

 devdata->thread = visor_thread_start(process_incoming_rsps, devdata,
          "vhba_incming");
 devdata->serverdown = 0;
 devdata->serverchangingstate = 0;

 return 0;
}
