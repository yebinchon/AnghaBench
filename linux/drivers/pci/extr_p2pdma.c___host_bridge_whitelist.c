
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_p2pdma_whitelist_entry {short vendor; unsigned short device; int flags; } ;
struct pci_host_bridge {int bus; } ;
struct pci_dev {unsigned short vendor; unsigned short device; } ;


 int PCI_DEVFN (int ,int ) ;
 int REQ_SAME_HOST_BRIDGE ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 struct pci_p2pdma_whitelist_entry* pci_p2pdma_whitelist ;

__attribute__((used)) static bool __host_bridge_whitelist(struct pci_host_bridge *host,
        bool same_host_bridge)
{
 struct pci_dev *root = pci_get_slot(host->bus, PCI_DEVFN(0, 0));
 const struct pci_p2pdma_whitelist_entry *entry;
 unsigned short vendor, device;

 if (!root)
  return 0;

 vendor = root->vendor;
 device = root->device;
 pci_dev_put(root);

 for (entry = pci_p2pdma_whitelist; entry->vendor; entry++) {
  if (vendor != entry->vendor || device != entry->device)
   continue;
  if (entry->flags & REQ_SAME_HOST_BRIDGE && !same_host_bridge)
   return 0;

  return 1;
 }

 return 0;
}
