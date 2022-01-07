
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct res_needed {int* devices; int not_correct; scalar_t__ io; scalar_t__ pfmem; scalar_t__ mem; } ;
struct pci_func {int dummy; } ;
struct TYPE_6__ {int number; } ;


 int GFP_KERNEL ;
 scalar_t__ IOBRIDGE ;
 scalar_t__ MEMBRIDGE ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_BASE_ADDRESS_2 ;
 int PCI_BASE_ADDRESS_3 ;
 int PCI_BASE_ADDRESS_4 ;
 int PCI_BASE_ADDRESS_5 ;
 int PCI_BASE_ADDRESS_MEM_PREFETCH ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 int PCI_BASE_ADDRESS_SPACE_IO ;
 int PCI_CLASS_DISPLAY_VGA ;
 int PCI_CLASS_NOT_DEFINED_VGA ;
 int PCI_CLASS_REVISION ;
 unsigned int PCI_DEVFN (int,int) ;
 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int PCI_VENDOR_ID ;
 scalar_t__ PCI_VENDOR_ID_NOTVALID ;
 int debug (char*,...) ;
 int err (char*,...) ;
 TYPE_1__* ibmphp_pci_bus ;
 struct res_needed* kzalloc (int,int ) ;
 int pci_bus_read_config_byte (TYPE_1__*,unsigned int,int ,int*) ;
 int pci_bus_read_config_dword (TYPE_1__*,unsigned int,int,int*) ;
 int pci_bus_read_config_word (TYPE_1__*,unsigned int,int ,scalar_t__*) ;
 int pci_bus_write_config_dword (TYPE_1__*,unsigned int,int,int) ;

__attribute__((used)) static struct res_needed *scan_behind_bridge(struct pci_func *func, u8 busno)
{
 int count, len[6];
 u16 vendor_id;
 u8 hdr_type;
 u8 device, function;
 unsigned int devfn;
 int howmany = 0;

 u32 bar[6], class;
 u32 address[] = {
  PCI_BASE_ADDRESS_0,
  PCI_BASE_ADDRESS_1,
  PCI_BASE_ADDRESS_2,
  PCI_BASE_ADDRESS_3,
  PCI_BASE_ADDRESS_4,
  PCI_BASE_ADDRESS_5,
  0
 };
 struct res_needed *amount;

 amount = kzalloc(sizeof(*amount), GFP_KERNEL);
 if (amount == ((void*)0))
  return ((void*)0);

 ibmphp_pci_bus->number = busno;

 debug("the bus_no behind the bridge is %x\n", busno);
 debug("scanning devices behind the bridge...\n");
 for (device = 0; device < 32; device++) {
  amount->devices[device] = 0;
  for (function = 0; function < 8; function++) {
   devfn = PCI_DEVFN(device, function);

   pci_bus_read_config_word(ibmphp_pci_bus, devfn, PCI_VENDOR_ID, &vendor_id);

   if (vendor_id != PCI_VENDOR_ID_NOTVALID) {

    howmany++;

    pci_bus_read_config_byte(ibmphp_pci_bus, devfn, PCI_HEADER_TYPE, &hdr_type);
    pci_bus_read_config_dword(ibmphp_pci_bus, devfn, PCI_CLASS_REVISION, &class);

    debug("hdr_type behind the bridge is %x\n", hdr_type);
    if ((hdr_type & 0x7f) == PCI_HEADER_TYPE_BRIDGE) {
     err("embedded bridges not supported for hot-plugging.\n");
     amount->not_correct = 1;
     return amount;
    }

    class >>= 8;
    if (class == PCI_CLASS_NOT_DEFINED_VGA) {
     err("The device %x is VGA compatible and as is not supported for hot plugging.  Please choose another device.\n", device);
     amount->not_correct = 1;
     return amount;
    } else if (class == PCI_CLASS_DISPLAY_VGA) {
     err("The device %x is not supported for hot plugging.  Please choose another device.\n", device);
     amount->not_correct = 1;
     return amount;
    }

    amount->devices[device] = 1;

    for (count = 0; address[count]; count++) {
     pci_bus_write_config_dword(ibmphp_pci_bus, devfn, address[count], 0xFFFFFFFF);
     pci_bus_read_config_dword(ibmphp_pci_bus, devfn, address[count], &bar[count]);

     debug("what is bar[count]? %x, count = %d\n", bar[count], count);

     if (!bar[count])
      continue;



     debug("count %d device %x function %x wants %x resources\n", count, device, function, bar[count]);

     if (bar[count] & PCI_BASE_ADDRESS_SPACE_IO) {

      len[count] = bar[count] & 0xFFFFFFFC;
      len[count] = ~len[count] + 1;
      amount->io += len[count];
     } else {

      if (bar[count] & PCI_BASE_ADDRESS_MEM_PREFETCH) {

       len[count] = bar[count] & 0xFFFFFFF0;
       len[count] = ~len[count] + 1;
       amount->pfmem += len[count];
       if (bar[count] & PCI_BASE_ADDRESS_MEM_TYPE_64)

        count += 1;

      } else {

       len[count] = bar[count] & 0xFFFFFFF0;
       len[count] = ~len[count] + 1;
       amount->mem += len[count];
       if (bar[count] & PCI_BASE_ADDRESS_MEM_TYPE_64) {

        count += 1;
       }
      }
     }
    }
   }
  }
 }

 if (!howmany)
  amount->not_correct = 1;
 else
  amount->not_correct = 0;
 if ((amount->io) && (amount->io < IOBRIDGE))
  amount->io = IOBRIDGE;
 if ((amount->mem) && (amount->mem < MEMBRIDGE))
  amount->mem = MEMBRIDGE;
 if ((amount->pfmem) && (amount->pfmem < MEMBRIDGE))
  amount->pfmem = MEMBRIDGE;
 return amount;
}
