
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct pci_host_bridge {int bus; int swizzle_irq; int map_irq; int * ops; int busnr; struct pci_config_window* sysdata; TYPE_1__ dev; int windows; } ;
struct pci_ecam_ops {int pci_ops; } ;
struct TYPE_4__ {int start; } ;
struct pci_config_window {TYPE_2__ busr; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct pci_config_window*) ;
 int PCI_PROBE_ONLY ;
 int PCI_REASSIGN_ALL_BUS ;
 int PTR_ERR (struct pci_config_window*) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int ) ;
 struct pci_config_window* gen_pci_init (struct device*,struct list_head*,struct pci_ecam_ops*) ;
 int list_splice_init (struct list_head*,int *) ;
 int of_irq_parse_and_map_pci ;
 int of_pci_check_probe_only () ;
 int pci_add_flags (int ) ;
 int pci_common_swizzle ;
 int pci_free_resource_list (struct list_head*) ;
 int pci_has_flag (int ) ;
 int pci_host_probe (struct pci_host_bridge*) ;
 int platform_set_drvdata (struct platform_device*,int ) ;

int pci_host_common_probe(struct platform_device *pdev,
     struct pci_ecam_ops *ops)
{
 struct device *dev = &pdev->dev;
 struct pci_host_bridge *bridge;
 struct pci_config_window *cfg;
 struct list_head resources;
 int ret;

 bridge = devm_pci_alloc_host_bridge(dev, 0);
 if (!bridge)
  return -ENOMEM;

 of_pci_check_probe_only();


 cfg = gen_pci_init(dev, &resources, ops);
 if (IS_ERR(cfg))
  return PTR_ERR(cfg);


 if (!pci_has_flag(PCI_PROBE_ONLY))
  pci_add_flags(PCI_REASSIGN_ALL_BUS);

 list_splice_init(&resources, &bridge->windows);
 bridge->dev.parent = dev;
 bridge->sysdata = cfg;
 bridge->busnr = cfg->busr.start;
 bridge->ops = &ops->pci_ops;
 bridge->map_irq = of_irq_parse_and_map_pci;
 bridge->swizzle_irq = pci_common_swizzle;

 ret = pci_host_probe(bridge);
 if (ret < 0) {
  pci_free_resource_list(&resources);
  return ret;
 }

 platform_set_drvdata(pdev, bridge->bus);
 return 0;
}
