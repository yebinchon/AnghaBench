
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl031_local {int dummy; } ;
struct amba_device {scalar_t__* irq; int dev; } ;


 int amba_release_regions (struct amba_device*) ;
 struct pl031_local* dev_get_drvdata (int *) ;
 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 int free_irq (scalar_t__,struct pl031_local*) ;

__attribute__((used)) static int pl031_remove(struct amba_device *adev)
{
 struct pl031_local *ldata = dev_get_drvdata(&adev->dev);

 dev_pm_clear_wake_irq(&adev->dev);
 device_init_wakeup(&adev->dev, 0);
 if (adev->irq[0])
  free_irq(adev->irq[0], ldata);
 amba_release_regions(adev);

 return 0;
}
