
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_phy {struct device* dev; struct phy* mmio; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 struct phy* devm_ioremap_resource (struct device*,struct resource*) ;
 struct ufs_mtk_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int *,int *) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy*,struct ufs_mtk_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int ufs_mtk_phy_clk_init (struct ufs_mtk_phy*) ;
 int ufs_mtk_phy_ops ;

__attribute__((used)) static int ufs_mtk_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct phy *generic_phy;
 struct phy_provider *phy_provider;
 struct resource *res;
 struct ufs_mtk_phy *phy;
 int ret;

 phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 phy->mmio = devm_ioremap_resource(dev, res);
 if (IS_ERR(phy->mmio))
  return PTR_ERR(phy->mmio);

 phy->dev = dev;

 ret = ufs_mtk_phy_clk_init(phy);
 if (ret)
  return ret;

 generic_phy = devm_phy_create(dev, ((void*)0), &ufs_mtk_phy_ops);
 if (IS_ERR(generic_phy))
  return PTR_ERR(generic_phy);

 phy_set_drvdata(generic_phy, phy);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
