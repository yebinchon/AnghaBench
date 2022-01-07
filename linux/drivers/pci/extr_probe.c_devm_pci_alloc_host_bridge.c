
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; } ;
struct pci_host_bridge {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct pci_host_bridge* devm_kzalloc (struct device*,int,int ) ;
 int devm_pci_release_host_bridge_dev ;
 int pci_init_host_bridge (struct pci_host_bridge*) ;

struct pci_host_bridge *devm_pci_alloc_host_bridge(struct device *dev,
         size_t priv)
{
 struct pci_host_bridge *bridge;

 bridge = devm_kzalloc(dev, sizeof(*bridge) + priv, GFP_KERNEL);
 if (!bridge)
  return ((void*)0);

 pci_init_host_bridge(bridge);
 bridge->dev.release = devm_pci_release_host_bridge_dev;

 return bridge;
}
