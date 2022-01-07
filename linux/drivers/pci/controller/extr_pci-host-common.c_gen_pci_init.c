
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_ecam_ops {int dummy; } ;
struct pci_config_window {int dummy; } ;
struct list_head {int dummy; } ;
struct device {int of_node; } ;


 struct pci_config_window* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct pci_config_window*) ;
 int PTR_ERR (struct pci_config_window*) ;
 int dev_err (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,struct pci_config_window*) ;
 int gen_pci_unmap_cfg ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 struct pci_config_window* pci_ecam_create (struct device*,struct resource*,struct resource*,struct pci_ecam_ops*) ;
 int pci_free_resource_list (struct list_head*) ;
 int pci_parse_request_of_pci_ranges (struct device*,struct list_head*,struct resource**) ;

__attribute__((used)) static struct pci_config_window *gen_pci_init(struct device *dev,
  struct list_head *resources, struct pci_ecam_ops *ops)
{
 int err;
 struct resource cfgres;
 struct resource *bus_range = ((void*)0);
 struct pci_config_window *cfg;


 err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
 if (err)
  return ERR_PTR(err);

 err = of_address_to_resource(dev->of_node, 0, &cfgres);
 if (err) {
  dev_err(dev, "missing \"reg\" property\n");
  goto err_out;
 }

 cfg = pci_ecam_create(dev, &cfgres, bus_range, ops);
 if (IS_ERR(cfg)) {
  err = PTR_ERR(cfg);
  goto err_out;
 }

 err = devm_add_action_or_reset(dev, gen_pci_unmap_cfg, cfg);
 if (err) {
  goto err_out;
 }
 return cfg;

err_out:
 pci_free_resource_list(resources);
 return ERR_PTR(err);
}
