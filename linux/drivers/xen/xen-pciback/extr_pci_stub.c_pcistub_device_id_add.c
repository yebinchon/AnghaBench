
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcistub_device_id {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_DEVFN (int,int) ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 struct pcistub_device_id* kmalloc (int,int ) ;
 int pci_domains_supported ;
 int pcistub_device_id_add_list (struct pcistub_device_id*,int,int,int) ;
 int pr_debug (char*,int,int,int,int) ;

__attribute__((used)) static int pcistub_device_id_add(int domain, int bus, int slot, int func)
{
 struct pcistub_device_id *pci_dev_id;
 int rc = 0, devfn = PCI_DEVFN(slot, func);

 if (slot < 0) {
  for (slot = 0; !rc && slot < 32; ++slot)
   rc = pcistub_device_id_add(domain, bus, slot, func);
  return rc;
 }

 if (func < 0) {
  for (func = 0; !rc && func < 8; ++func)
   rc = pcistub_device_id_add(domain, bus, slot, func);
  return rc;
 }

 if ((


      !pci_domains_supported ? domain :

      domain < 0 || domain > 0xffff)
     || bus < 0 || bus > 0xff
     || PCI_SLOT(devfn) != slot
     || PCI_FUNC(devfn) != func)
  return -EINVAL;

 pci_dev_id = kmalloc(sizeof(*pci_dev_id), GFP_KERNEL);
 if (!pci_dev_id)
  return -ENOMEM;

 pr_debug("wants to seize %04x:%02x:%02x.%d\n",
   domain, bus, slot, func);

 pcistub_device_id_add_list(pci_dev_id, domain, bus, devfn);

 return 0;
}
