
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct pci_host_bridge {struct mtk_pcie* sysdata; int swizzle_irq; int map_irq; int ops; TYPE_1__ dev; int busnr; } ;
struct mtk_pcie {int ports; TYPE_2__* soc; struct device* dev; int busnr; } ;
struct TYPE_4__ {int ops; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 int list_empty (int *) ;
 int mtk_pcie_put_resources (struct mtk_pcie*) ;
 int mtk_pcie_setup (struct mtk_pcie*) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 int of_irq_parse_and_map_pci ;
 int pci_common_swizzle ;
 struct mtk_pcie* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int pci_host_probe (struct pci_host_bridge*) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_pcie*) ;

__attribute__((used)) static int mtk_pcie_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_pcie *pcie;
 struct pci_host_bridge *host;
 int err;

 host = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
 if (!host)
  return -ENOMEM;

 pcie = pci_host_bridge_priv(host);

 pcie->dev = dev;
 pcie->soc = of_device_get_match_data(dev);
 platform_set_drvdata(pdev, pcie);
 INIT_LIST_HEAD(&pcie->ports);

 err = mtk_pcie_setup(pcie);
 if (err)
  return err;

 host->busnr = pcie->busnr;
 host->dev.parent = pcie->dev;
 host->ops = pcie->soc->ops;
 host->map_irq = of_irq_parse_and_map_pci;
 host->swizzle_irq = pci_common_swizzle;
 host->sysdata = pcie;

 err = pci_host_probe(host);
 if (err)
  goto put_resources;

 return 0;

put_resources:
 if (!list_empty(&pcie->ports))
  mtk_pcie_put_resources(pcie);

 return err;
}
