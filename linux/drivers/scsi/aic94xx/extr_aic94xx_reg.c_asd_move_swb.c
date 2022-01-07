
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct asd_ha_struct {TYPE_1__* io_handle; int pcidev; } ;
struct TYPE_2__ {int swb_base; } ;


 int MBAR0_SWB_SIZE ;
 int PCI_CONF_MBAR0_SWB ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void asd_move_swb(struct asd_ha_struct *asd_ha, u32 reg)
{
 u32 base = reg & ~(MBAR0_SWB_SIZE-1);
 pci_write_config_dword(asd_ha->pcidev, PCI_CONF_MBAR0_SWB, base);
 asd_ha->io_handle[0].swb_base = base;
}
