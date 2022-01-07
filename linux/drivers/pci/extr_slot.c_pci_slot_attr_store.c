
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot_attribute {int (* store ) (struct pci_slot*,char const*,size_t) ;} ;
struct pci_slot {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct pci_slot*,char const*,size_t) ;
 struct pci_slot* to_pci_slot (struct kobject*) ;
 struct pci_slot_attribute* to_pci_slot_attr (struct attribute*) ;

__attribute__((used)) static ssize_t pci_slot_attr_store(struct kobject *kobj,
   struct attribute *attr, const char *buf, size_t len)
{
 struct pci_slot *slot = to_pci_slot(kobj);
 struct pci_slot_attribute *attribute = to_pci_slot_attr(attr);
 return attribute->store ? attribute->store(slot, buf, len) : -EIO;
}
