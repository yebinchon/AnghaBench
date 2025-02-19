
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int kona_reset_base ;
 int kona_reset_nb ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int register_restart_handler (int *) ;

__attribute__((used)) static int kona_reset_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 kona_reset_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(kona_reset_base))
  return PTR_ERR(kona_reset_base);

 return register_restart_handler(&kona_reset_nb);
}
