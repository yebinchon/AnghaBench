
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_pcie {scalar_t__ dbi_base; int * ops; struct device* dev; } ;
struct armada8k_pcie {scalar_t__ clk; scalar_t__ clk_reg; struct dw_pcie* pci; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int armada8k_add_pcie_port (struct armada8k_pcie*,struct platform_device*) ;
 int armada8k_pcie_disable_phys (struct armada8k_pcie*) ;
 int armada8k_pcie_setup_phys (struct armada8k_pcie*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (struct device*,char*,struct resource*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_pci_remap_cfg_resource (struct device*,struct resource*) ;
 int dw_pcie_ops ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct armada8k_pcie*) ;

__attribute__((used)) static int armada8k_pcie_probe(struct platform_device *pdev)
{
 struct dw_pcie *pci;
 struct armada8k_pcie *pcie;
 struct device *dev = &pdev->dev;
 struct resource *base;
 int ret;

 pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
 if (!pcie)
  return -ENOMEM;

 pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
 if (!pci)
  return -ENOMEM;

 pci->dev = dev;
 pci->ops = &dw_pcie_ops;

 pcie->pci = pci;

 pcie->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(pcie->clk))
  return PTR_ERR(pcie->clk);

 ret = clk_prepare_enable(pcie->clk);
 if (ret)
  return ret;

 pcie->clk_reg = devm_clk_get(dev, "reg");
 if (pcie->clk_reg == ERR_PTR(-EPROBE_DEFER)) {
  ret = -EPROBE_DEFER;
  goto fail;
 }
 if (!IS_ERR(pcie->clk_reg)) {
  ret = clk_prepare_enable(pcie->clk_reg);
  if (ret)
   goto fail_clkreg;
 }


 base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctrl");
 pci->dbi_base = devm_pci_remap_cfg_resource(dev, base);
 if (IS_ERR(pci->dbi_base)) {
  dev_err(dev, "couldn't remap regs base %p\n", base);
  ret = PTR_ERR(pci->dbi_base);
  goto fail_clkreg;
 }

 ret = armada8k_pcie_setup_phys(pcie);
 if (ret)
  goto fail_clkreg;

 platform_set_drvdata(pdev, pcie);

 ret = armada8k_add_pcie_port(pcie, pdev);
 if (ret)
  goto disable_phy;

 return 0;

disable_phy:
 armada8k_pcie_disable_phys(pcie);
fail_clkreg:
 clk_disable_unprepare(pcie->clk_reg);
fail:
 clk_disable_unprepare(pcie->clk);

 return ret;
}
