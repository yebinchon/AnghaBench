
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_device {int dummy; } ;
struct soc_camera_async_client {struct platform_device* pdev; } ;
struct TYPE_2__ {int driver; } ;
struct platform_device {TYPE_1__ dev; } ;


 int platform_device_add (struct platform_device*) ;
 struct soc_camera_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct soc_camera_device *soc_camera_add_pdev(struct soc_camera_async_client *sasc)
{
 struct platform_device *pdev = sasc->pdev;
 int ret;

 ret = platform_device_add(pdev);
 if (ret < 0 || !pdev->dev.driver)
  return ((void*)0);

 return platform_get_drvdata(pdev);
}
