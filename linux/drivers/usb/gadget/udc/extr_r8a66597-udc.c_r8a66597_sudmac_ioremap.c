
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct r8a66597 {int sudmac_reg; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int r8a66597_sudmac_ioremap(struct r8a66597 *r8a66597,
       struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sudmac");
 r8a66597->sudmac_reg = devm_ioremap_resource(&pdev->dev, res);
 return PTR_ERR_OR_ZERO(r8a66597->sudmac_reg);
}
