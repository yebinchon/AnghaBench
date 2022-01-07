
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int vrtc_mrst_do_probe (int *,int ,int ) ;

__attribute__((used)) static int vrtc_mrst_platform_probe(struct platform_device *pdev)
{
 return vrtc_mrst_do_probe(&pdev->dev,
   platform_get_resource(pdev, IORESOURCE_MEM, 0),
   platform_get_irq(pdev, 0));
}
