
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int pcidev; } ;


 int ASD_DPRINTK (char*,int ) ;
 int asd_chip_hardrst (struct asd_ha_struct*) ;
 int pci_name (int ) ;

__attribute__((used)) static void asd_chip_reset(struct asd_ha_struct *asd_ha)
{
 ASD_DPRINTK("chip reset for %s\n", pci_name(asd_ha->pcidev));
 asd_chip_hardrst(asd_ha);
}
