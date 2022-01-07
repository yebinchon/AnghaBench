
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {scalar_t__ hdr_type; int dev; } ;
struct TYPE_2__ {unsigned int end; scalar_t__ start; } ;
struct pci_bus {unsigned int number; unsigned int primary; int bridge_ctl; struct pci_bus* parent; TYPE_1__ busn_res; int name; } ;


 int CARDBUS_LATENCY_TIMER ;
 int CARDBUS_RESERVE_BUSNR ;
 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_MASTER_ABORT ;
 scalar_t__ PCI_HEADER_TYPE_CARDBUS ;
 int PCI_PRIMARY_BUS ;
 int PCI_STATUS ;
 int PCI_SUBORDINATE_BUS ;
 int dev_info (int *,char*,TYPE_1__*) ;
 struct pci_bus* pci_add_new_bus (struct pci_bus*,struct pci_dev*,int) ;
 int pci_bus_insert_busn_res (struct pci_bus*,int,unsigned int) ;
 int pci_bus_update_busn_res_end (struct pci_bus*,int) ;
 int pci_dbg (struct pci_dev*,char*,unsigned int,unsigned int,int) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pci_ea_fixed_busnrs (struct pci_dev*,unsigned int*,unsigned int*) ;
 int pci_enable_crs (struct pci_dev*) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 int pci_info (struct pci_dev*,char*,unsigned int,unsigned int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 unsigned int pci_scan_child_bus (struct pci_bus*) ;
 int pci_scan_child_bus_extend (struct pci_bus*,unsigned int) ;
 int pci_warn (struct pci_dev*,char*,...) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 scalar_t__ pcibios_assign_all_busses () ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int sprintf (int ,char*,int ,unsigned int) ;

__attribute__((used)) static int pci_scan_bridge_extend(struct pci_bus *bus, struct pci_dev *dev,
      int max, unsigned int available_buses,
      int pass)
{
 struct pci_bus *child;
 int is_cardbus = (dev->hdr_type == PCI_HEADER_TYPE_CARDBUS);
 u32 buses, i, j = 0;
 u16 bctl;
 u8 primary, secondary, subordinate;
 int broken = 0;
 bool fixed_buses;
 u8 fixed_sec, fixed_sub;
 int next_busnr;





 pm_runtime_get_sync(&dev->dev);

 pci_read_config_dword(dev, PCI_PRIMARY_BUS, &buses);
 primary = buses & 0xFF;
 secondary = (buses >> 8) & 0xFF;
 subordinate = (buses >> 16) & 0xFF;

 pci_dbg(dev, "scanning [bus %02x-%02x] behind bridge, pass %d\n",
  secondary, subordinate, pass);

 if (!primary && (primary != bus->number) && secondary && subordinate) {
  pci_warn(dev, "Primary bus is hard wired to 0\n");
  primary = bus->number;
 }


 if (!pass &&
     (primary != bus->number || secondary <= bus->number ||
      secondary > subordinate)) {
  pci_info(dev, "bridge configuration invalid ([bus %02x-%02x]), reconfiguring\n",
    secondary, subordinate);
  broken = 1;
 }





 pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &bctl);
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL,
         bctl & ~PCI_BRIDGE_CTL_MASTER_ABORT);

 pci_enable_crs(dev);

 if ((secondary || subordinate) && !pcibios_assign_all_busses() &&
     !is_cardbus && !broken) {
  unsigned int cmax;





  if (pass)
   goto out;







  child = pci_find_bus(pci_domain_nr(bus), secondary);
  if (!child) {
   child = pci_add_new_bus(bus, dev, secondary);
   if (!child)
    goto out;
   child->primary = primary;
   pci_bus_insert_busn_res(child, secondary, subordinate);
   child->bridge_ctl = bctl;
  }

  cmax = pci_scan_child_bus(child);
  if (cmax > subordinate)
   pci_warn(dev, "bridge has subordinate %02x but max busn %02x\n",
     subordinate, cmax);


  if (subordinate > max)
   max = subordinate;
 } else {





  if (!pass) {
   if (pcibios_assign_all_busses() || broken || is_cardbus)
    pci_write_config_dword(dev, PCI_PRIMARY_BUS,
             buses & ~0xffffff);
   goto out;
  }


  pci_write_config_word(dev, PCI_STATUS, 0xffff);


  fixed_buses = pci_ea_fixed_busnrs(dev, &fixed_sec, &fixed_sub);
  if (fixed_buses)
   next_busnr = fixed_sec;
  else
   next_busnr = max + 1;






  child = pci_find_bus(pci_domain_nr(bus), next_busnr);
  if (!child) {
   child = pci_add_new_bus(bus, dev, next_busnr);
   if (!child)
    goto out;
   pci_bus_insert_busn_res(child, next_busnr,
      bus->busn_res.end);
  }
  max++;
  if (available_buses)
   available_buses--;

  buses = (buses & 0xff000000)
        | ((unsigned int)(child->primary) << 0)
        | ((unsigned int)(child->busn_res.start) << 8)
        | ((unsigned int)(child->busn_res.end) << 16);





  if (is_cardbus) {
   buses &= ~0xff000000;
   buses |= CARDBUS_LATENCY_TIMER << 24;
  }


  pci_write_config_dword(dev, PCI_PRIMARY_BUS, buses);

  if (!is_cardbus) {
   child->bridge_ctl = bctl;
   max = pci_scan_child_bus_extend(child, available_buses);
  } else {






   for (i = 0; i < CARDBUS_RESERVE_BUSNR; i++) {
    struct pci_bus *parent = bus;
    if (pci_find_bus(pci_domain_nr(bus),
       max+i+1))
     break;
    while (parent->parent) {
     if ((!pcibios_assign_all_busses()) &&
         (parent->busn_res.end > max) &&
         (parent->busn_res.end <= max+i)) {
      j = 1;
     }
     parent = parent->parent;
    }
    if (j) {






     i /= 2;
     break;
    }
   }
   max += i;
  }






  if (fixed_buses)
   max = fixed_sub;
  pci_bus_update_busn_res_end(child, max);
  pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, max);
 }

 sprintf(child->name,
  (is_cardbus ? "PCI CardBus %04x:%02x" : "PCI Bus %04x:%02x"),
  pci_domain_nr(bus), child->number);


 while (bus->parent) {
  if ((child->busn_res.end > bus->busn_res.end) ||
      (child->number > bus->busn_res.end) ||
      (child->number < bus->number) ||
      (child->busn_res.end < bus->number)) {
   dev_info(&dev->dev, "devices behind bridge are unusable because %pR cannot be assigned for them\n",
     &child->busn_res);
   break;
  }
  bus = bus->parent;
 }

out:
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL, bctl);

 pm_runtime_put(&dev->dev);

 return max;
}
