
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct slot {int number; } ;
struct pci_func {scalar_t__ device; int function; int bus; } ;
struct pci_bus {int number; } ;
struct controller {int add_support; int bus; struct pci_bus* pci_bus; } ;


 scalar_t__ PCI_BASE_CLASS_DISPLAY ;
 int PCI_BRIDGE_CONTROL ;
 scalar_t__ PCI_BRIDGE_CTL_VGA ;
 unsigned int PCI_DEVFN (scalar_t__,int ) ;
 int PCI_HEADER_TYPE ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 int REMOVE_NOT_SUPPORTED ;
 struct slot* cpqhp_find_slot (struct controller*,scalar_t__) ;
 struct pci_func* cpqhp_slot_find (int ,scalar_t__,int ) ;
 int pci_bus_read_config_byte (struct pci_bus*,unsigned int,int,scalar_t__*) ;
 int remove_board (struct pci_func*,scalar_t__,struct controller*) ;

int cpqhp_process_SS(struct controller *ctrl, struct pci_func *func)
{
 u8 device, class_code, header_type, BCR;
 u8 index = 0;
 u8 replace_flag;
 u32 rc = 0;
 unsigned int devfn;
 struct slot *p_slot;
 struct pci_bus *pci_bus = ctrl->pci_bus;
 int physical_slot = 0;

 device = func->device;
 func = cpqhp_slot_find(ctrl->bus, device, index++);
 p_slot = cpqhp_find_slot(ctrl, device);
 if (p_slot)
  physical_slot = p_slot->number;


 while (func && !rc) {
  pci_bus->number = func->bus;
  devfn = PCI_DEVFN(func->device, func->function);


  rc = pci_bus_read_config_byte(pci_bus, devfn, 0x0B, &class_code);
  if (rc)
   return rc;

  if (class_code == PCI_BASE_CLASS_DISPLAY) {

   rc = REMOVE_NOT_SUPPORTED;
  } else {

   rc = pci_bus_read_config_byte(pci_bus, devfn, PCI_HEADER_TYPE, &header_type);
   if (rc)
    return rc;


   if ((header_type & 0x7F) == PCI_HEADER_TYPE_BRIDGE) {
    rc = pci_bus_read_config_byte(pci_bus, devfn, PCI_BRIDGE_CONTROL, &BCR);
    if (rc)
     return rc;



    if (BCR & PCI_BRIDGE_CTL_VGA)
     rc = REMOVE_NOT_SUPPORTED;
   }
  }

  func = cpqhp_slot_find(ctrl->bus, device, index++);
 }

 func = cpqhp_slot_find(ctrl->bus, device, 0);
 if ((func != ((void*)0)) && !rc) {

  replace_flag = !(ctrl->add_support);
  rc = remove_board(func, replace_flag, ctrl);
 } else if (!rc) {
  rc = 1;
 }

 return rc;
}
