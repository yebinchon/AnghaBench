
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int SlotNumber; int EnclosureLogicalID; } ;
typedef TYPE_1__ Mpi2BootDeviceEnclosureSlot_t ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static inline int
_scsih_srch_boot_encl_slot(u64 enclosure_logical_id, u16 slot_number,
 Mpi2BootDeviceEnclosureSlot_t *boot_device)
{
 return (enclosure_logical_id == le64_to_cpu(boot_device->
     EnclosureLogicalID) && slot_number == le16_to_cpu(boot_device->
     SlotNumber)) ? 1 : 0;
}
