
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct asd_ha_struct {int pcidev; } ;


 int asd_chip_hardrst (struct asd_ha_struct*) ;
 int asd_destroy_ha_caches (struct asd_ha_struct*) ;
 int asd_disable_ints (struct asd_ha_struct*) ;
 int asd_free_queues (struct asd_ha_struct*) ;
 int asd_remove_dev_attrs (struct asd_ha_struct*) ;
 int asd_turn_off_leds (struct asd_ha_struct*) ;
 int asd_unmap_ha (struct asd_ha_struct*) ;
 int asd_unregister_sas_ha (struct asd_ha_struct*) ;
 int free_irq (int ,struct asd_ha_struct*) ;
 int kfree (struct asd_ha_struct*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (int ) ;
 struct asd_ha_struct* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ use_msi ;

__attribute__((used)) static void asd_pci_remove(struct pci_dev *dev)
{
 struct asd_ha_struct *asd_ha = pci_get_drvdata(dev);

 if (!asd_ha)
  return;

 asd_unregister_sas_ha(asd_ha);

 asd_disable_ints(asd_ha);

 asd_remove_dev_attrs(asd_ha);



 free_irq(dev->irq, asd_ha);
 if (use_msi)
  pci_disable_msi(asd_ha->pcidev);
 asd_turn_off_leds(asd_ha);
 asd_chip_hardrst(asd_ha);
 asd_free_queues(asd_ha);
 asd_destroy_ha_caches(asd_ha);
 asd_unmap_ha(asd_ha);
 kfree(asd_ha);
 pci_disable_device(dev);
 return;
}
