
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ state; int dev; } ;


 scalar_t__ STARGET_CREATED ;
 scalar_t__ STARGET_RUNNING ;
 int dev_err (int *,char*,int) ;
 int device_add (int *) ;
 int device_enable_async_suspend (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int transport_add_device (int *) ;

__attribute__((used)) static int scsi_target_add(struct scsi_target *starget)
{
 int error;

 if (starget->state != STARGET_CREATED)
  return 0;

 error = device_add(&starget->dev);
 if (error) {
  dev_err(&starget->dev, "target device_add failed, error %d\n", error);
  return error;
 }
 transport_add_device(&starget->dev);
 starget->state = STARGET_RUNNING;

 pm_runtime_set_active(&starget->dev);
 pm_runtime_enable(&starget->dev);
 device_enable_async_suspend(&starget->dev);

 return 0;
}
