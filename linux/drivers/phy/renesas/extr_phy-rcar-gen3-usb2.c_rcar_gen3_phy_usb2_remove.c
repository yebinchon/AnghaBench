
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {scalar_t__ is_otg_channel; } ;
struct platform_device {int dev; } ;


 int dev_attr_role ;
 int device_remove_file (int *,int *) ;
 struct rcar_gen3_chan* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
{
 struct rcar_gen3_chan *channel = platform_get_drvdata(pdev);

 if (channel->is_otg_channel)
  device_remove_file(&pdev->dev, &dev_attr_role);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
