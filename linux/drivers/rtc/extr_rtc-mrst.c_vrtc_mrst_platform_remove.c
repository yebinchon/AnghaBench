
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int rtc_mrst_do_remove (int *) ;

__attribute__((used)) static int vrtc_mrst_platform_remove(struct platform_device *pdev)
{
 rtc_mrst_do_remove(&pdev->dev);
 return 0;
}
