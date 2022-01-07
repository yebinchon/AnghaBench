
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct asd_ha_struct {int pcidev; } ;


 int ENODEV ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int asd_map_ioport (struct asd_ha_struct*) ;
 int asd_map_memio (struct asd_ha_struct*) ;
 int asd_printk (char*,int ) ;
 int pci_name (int ) ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static int asd_map_ha(struct asd_ha_struct *asd_ha)
{
 int err;
 u16 cmd_reg;

 err = pci_read_config_word(asd_ha->pcidev, PCI_COMMAND, &cmd_reg);
 if (err) {
  asd_printk("couldn't read command register of %s\n",
      pci_name(asd_ha->pcidev));
  goto Err;
 }

 err = -ENODEV;
 if (cmd_reg & PCI_COMMAND_MEMORY) {
  if ((err = asd_map_memio(asd_ha)))
   goto Err;
 } else if (cmd_reg & PCI_COMMAND_IO) {
  if ((err = asd_map_ioport(asd_ha)))
   goto Err;
  asd_printk("%s ioport mapped -- upgrade your hardware\n",
      pci_name(asd_ha->pcidev));
 } else {
  asd_printk("no proper device access to %s\n",
      pci_name(asd_ha->pcidev));
  goto Err;
 }

 return 0;
Err:
 return err;
}
