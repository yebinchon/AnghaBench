
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; } ;
struct pci_host_bridge {TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 struct pci_host_bridge* kzalloc (int,int ) ;
 int pci_init_host_bridge (struct pci_host_bridge*) ;
 int pci_release_host_bridge_dev ;

struct pci_host_bridge *pci_alloc_host_bridge(size_t priv)
{
 struct pci_host_bridge *bridge;

 bridge = kzalloc(sizeof(*bridge) + priv, GFP_KERNEL);
 if (!bridge)
  return ((void*)0);

 pci_init_host_bridge(bridge);
 bridge->dev.release = pci_release_host_bridge_dev;

 return bridge;
}
