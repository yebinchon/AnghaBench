
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int dummy; } ;
struct pci_dev {int bus; } ;


 int __host_bridge_whitelist (struct pci_host_bridge*,int) ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;

__attribute__((used)) static bool host_bridge_whitelist(struct pci_dev *a, struct pci_dev *b)
{
 struct pci_host_bridge *host_a = pci_find_host_bridge(a->bus);
 struct pci_host_bridge *host_b = pci_find_host_bridge(b->bus);

 if (host_a == host_b)
  return __host_bridge_whitelist(host_a, 1);

 if (__host_bridge_whitelist(host_a, 0) &&
     __host_bridge_whitelist(host_b, 0))
  return 1;

 return 0;
}
