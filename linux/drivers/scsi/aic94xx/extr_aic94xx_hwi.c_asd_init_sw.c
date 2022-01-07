
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct pci_dev {int dummy; } ;
struct asd_ha_struct {int iolock; TYPE_1__* io_handle; int iospace; struct pci_dev* pcidev; } ;
struct TYPE_2__ {void* swa_base; scalar_t__ len; void* swc_base; void* swb_base; } ;


 scalar_t__ MBAR0_SWB_SIZE ;
 void* OCM_BASE_ADDR ;
 int PCI_CONF_MBAR0_SWA ;
 int PCI_CONF_MBAR0_SWB ;
 int PCI_CONF_MBAR0_SWC ;
 int PCI_CONF_MBAR1 ;
 int PCI_CONF_MBAR_KEY ;
 void* REG_BASE_ADDR ;
 void* REG_BASE_ADDR_CSEQCIO ;
 void* REG_BASE_ADDR_EXSI ;
 int asd_printk (char*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,void**) ;
 int pci_write_config_dword (struct pci_dev*,int ,void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int asd_init_sw(struct asd_ha_struct *asd_ha)
{
 struct pci_dev *pcidev = asd_ha->pcidev;
 int err;
 u32 v;


 err = pci_read_config_dword(pcidev, PCI_CONF_MBAR_KEY, &v);
 if (err) {
  asd_printk("couldn't access conf. space of %s\n",
      pci_name(pcidev));
  goto Err;
 }
 if (v)
  err = pci_write_config_dword(pcidev, PCI_CONF_MBAR_KEY, v);
 if (err) {
  asd_printk("couldn't write to MBAR_KEY of %s\n",
      pci_name(pcidev));
  goto Err;
 }




 pci_write_config_dword(pcidev, PCI_CONF_MBAR0_SWA, REG_BASE_ADDR);
 pci_write_config_dword(pcidev, PCI_CONF_MBAR0_SWB,
          REG_BASE_ADDR_CSEQCIO);
 pci_write_config_dword(pcidev, PCI_CONF_MBAR0_SWC, REG_BASE_ADDR_EXSI);
 asd_ha->io_handle[0].swa_base = REG_BASE_ADDR;
 asd_ha->io_handle[0].swb_base = REG_BASE_ADDR_CSEQCIO;
 asd_ha->io_handle[0].swc_base = REG_BASE_ADDR_EXSI;
 MBAR0_SWB_SIZE = asd_ha->io_handle[0].len - 0x80;
 if (!asd_ha->iospace) {

  pci_write_config_dword(pcidev, PCI_CONF_MBAR1, OCM_BASE_ADDR);
  asd_ha->io_handle[1].swa_base = OCM_BASE_ADDR;
 }
 spin_lock_init(&asd_ha->iolock);
Err:
 return err;
}
