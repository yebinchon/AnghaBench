
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int devm_pci_release_host_bridge_dev (struct device*) ;
 int kfree (int ) ;
 int to_pci_host_bridge (struct device*) ;

__attribute__((used)) static void pci_release_host_bridge_dev(struct device *dev)
{
 devm_pci_release_host_bridge_dev(dev);
 kfree(to_pci_host_bridge(dev));
}
