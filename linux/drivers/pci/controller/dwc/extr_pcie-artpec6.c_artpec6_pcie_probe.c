
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct dw_pcie {void* dbi_base; int * ops; struct device* dev; } ;
struct artpec_pcie_of_data {scalar_t__ mode; scalar_t__ variant; } ;
struct artpec6_pcie {int variant; int mode; void* regmap; void* phy_base; struct dw_pcie* pci; } ;
typedef enum dw_pcie_device_mode { ____Placeholder_dw_pcie_device_mode } dw_pcie_device_mode ;
typedef enum artpec_pcie_variants { ____Placeholder_artpec_pcie_variants } artpec_pcie_variants ;


 int CONFIG_PCIE_ARTPEC6_EP ;
 int CONFIG_PCIE_ARTPEC6_HOST ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PCIECFG ;
 int PCIECFG_DEVICE_TYPE_MASK ;
 int PTR_ERR (void*) ;
 int artpec6_add_pcie_ep (struct artpec6_pcie*,struct platform_device*) ;
 int artpec6_add_pcie_port (struct artpec6_pcie*,struct platform_device*) ;
 int artpec6_pcie_of_match ;
 int artpec6_pcie_readl (struct artpec6_pcie*,int ) ;
 int artpec6_pcie_writel (struct artpec6_pcie*,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int dw_pcie_ops ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct artpec6_pcie*) ;
 void* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int artpec6_pcie_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct dw_pcie *pci;
 struct artpec6_pcie *artpec6_pcie;
 struct resource *dbi_base;
 struct resource *phy_base;
 int ret;
 const struct of_device_id *match;
 const struct artpec_pcie_of_data *data;
 enum artpec_pcie_variants variant;
 enum dw_pcie_device_mode mode;

 match = of_match_device(artpec6_pcie_of_match, dev);
 if (!match)
  return -EINVAL;

 data = (struct artpec_pcie_of_data *)match->data;
 variant = (enum artpec_pcie_variants)data->variant;
 mode = (enum dw_pcie_device_mode)data->mode;

 artpec6_pcie = devm_kzalloc(dev, sizeof(*artpec6_pcie), GFP_KERNEL);
 if (!artpec6_pcie)
  return -ENOMEM;

 pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
 if (!pci)
  return -ENOMEM;

 pci->dev = dev;
 pci->ops = &dw_pcie_ops;

 artpec6_pcie->pci = pci;
 artpec6_pcie->variant = variant;
 artpec6_pcie->mode = mode;

 dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
 pci->dbi_base = devm_ioremap_resource(dev, dbi_base);
 if (IS_ERR(pci->dbi_base))
  return PTR_ERR(pci->dbi_base);

 phy_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 artpec6_pcie->phy_base = devm_ioremap_resource(dev, phy_base);
 if (IS_ERR(artpec6_pcie->phy_base))
  return PTR_ERR(artpec6_pcie->phy_base);

 artpec6_pcie->regmap =
  syscon_regmap_lookup_by_phandle(dev->of_node,
      "axis,syscon-pcie");
 if (IS_ERR(artpec6_pcie->regmap))
  return PTR_ERR(artpec6_pcie->regmap);

 platform_set_drvdata(pdev, artpec6_pcie);

 switch (artpec6_pcie->mode) {
 case 128:
  if (!IS_ENABLED(CONFIG_PCIE_ARTPEC6_HOST))
   return -ENODEV;

  ret = artpec6_add_pcie_port(artpec6_pcie, pdev);
  if (ret < 0)
   return ret;
  break;
 case 129: {
  u32 val;

  if (!IS_ENABLED(CONFIG_PCIE_ARTPEC6_EP))
   return -ENODEV;

  val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
  val &= ~PCIECFG_DEVICE_TYPE_MASK;
  artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
  ret = artpec6_add_pcie_ep(artpec6_pcie, pdev);
  if (ret < 0)
   return ret;
  break;
 }
 default:
  dev_err(dev, "INVALID device type %d\n", artpec6_pcie->mode);
 }

 return 0;
}
