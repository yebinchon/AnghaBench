
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct phy_provider {int dummy; } ;
struct mv_usb2_phy {int phy; int base; int clk; struct platform_device* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mv_usb2_phy* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (TYPE_1__*,int ) ;
 int devm_phy_create (TYPE_1__*,int ,int *) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (int ,struct mv_usb2_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int usb_ops ;

__attribute__((used)) static int mv_usb2_phy_probe(struct platform_device *pdev)
{
 struct phy_provider *phy_provider;
 struct mv_usb2_phy *mv_phy;
 struct resource *r;

 mv_phy = devm_kzalloc(&pdev->dev, sizeof(*mv_phy), GFP_KERNEL);
 if (!mv_phy)
  return -ENOMEM;

 mv_phy->pdev = pdev;

 mv_phy->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mv_phy->clk)) {
  dev_err(&pdev->dev, "failed to get clock.\n");
  return PTR_ERR(mv_phy->clk);
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mv_phy->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(mv_phy->base))
  return PTR_ERR(mv_phy->base);

 mv_phy->phy = devm_phy_create(&pdev->dev, pdev->dev.of_node, &usb_ops);
 if (IS_ERR(mv_phy->phy))
  return PTR_ERR(mv_phy->phy);

 phy_set_drvdata(mv_phy->phy, mv_phy);

 phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
 return PTR_ERR_OR_ZERO(phy_provider);
}
