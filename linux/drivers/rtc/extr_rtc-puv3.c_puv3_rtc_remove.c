
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int kfree (int ) ;
 int puv3_rtc_mem ;
 int puv3_rtc_setaie (int *,int ) ;
 int puv3_rtc_setpie (int *,int ) ;
 int release_resource (int ) ;

__attribute__((used)) static int puv3_rtc_remove(struct platform_device *dev)
{
 puv3_rtc_setpie(&dev->dev, 0);
 puv3_rtc_setaie(&dev->dev, 0);

 release_resource(puv3_rtc_mem);
 kfree(puv3_rtc_mem);

 return 0;
}
