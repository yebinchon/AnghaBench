
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef size_t u_int ;
struct ahd_pci_identity {int full_id; int id_mask; int * name; } ;
typedef int ahd_dev_softc_t ;


 int ID_ALL_IROC_MASK ;
 int PCIR_DEVICE ;
 int PCIR_DEVVENDOR ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int ahd_compose_id (int ,int ,int ,int ) ;
 size_t ahd_num_pci_devs ;
 struct ahd_pci_identity* ahd_pci_ident_table ;
 int ahd_pci_read_config (int ,int ,int) ;

const struct ahd_pci_identity *
ahd_find_pci_device(ahd_dev_softc_t pci)
{
 uint64_t full_id;
 uint16_t device;
 uint16_t vendor;
 uint16_t subdevice;
 uint16_t subvendor;
 const struct ahd_pci_identity *entry;
 u_int i;

 vendor = ahd_pci_read_config(pci, PCIR_DEVVENDOR, 2);
 device = ahd_pci_read_config(pci, PCIR_DEVICE, 2);
 subvendor = ahd_pci_read_config(pci, PCIR_SUBVEND_0, 2);
 subdevice = ahd_pci_read_config(pci, PCIR_SUBDEV_0, 2);
 full_id = ahd_compose_id(device,
     vendor,
     subdevice,
     subvendor);





 full_id &= ID_ALL_IROC_MASK;

 for (i = 0; i < ahd_num_pci_devs; i++) {
  entry = &ahd_pci_ident_table[i];
  if (entry->full_id == (full_id & entry->id_mask)) {

   if (entry->name == ((void*)0))
    return (((void*)0));
   return (entry);
  }
 }
 return (((void*)0));
}
