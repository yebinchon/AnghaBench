
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slim_driver {int (* device_status ) (struct slim_device*,int) ;} ;
struct TYPE_2__ {int driver; } ;
struct slim_device {int status; TYPE_1__ dev; } ;
typedef enum slim_device_status { ____Placeholder_slim_device_status } slim_device_status ;


 int stub1 (struct slim_device*,int) ;
 struct slim_driver* to_slim_driver (int ) ;

__attribute__((used)) static void slim_device_update_status(struct slim_device *sbdev,
          enum slim_device_status status)
{
 struct slim_driver *sbdrv;

 if (sbdev->status == status)
  return;

 sbdev->status = status;
 if (!sbdev->dev.driver)
  return;

 sbdrv = to_slim_driver(sbdev->dev.driver);
 if (sbdrv->device_status)
  sbdrv->device_status(sbdev, sbdev->status);
}
