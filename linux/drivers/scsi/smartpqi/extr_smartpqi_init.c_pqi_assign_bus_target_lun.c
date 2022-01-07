
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pqi_scsi_dev {int target_lun_valid; scalar_t__ is_external_raid_device; int * scsi3addr; } ;


 int PQI_EXTERNAL_RAID_VOLUME_BUS ;
 int PQI_HBA_BUS ;
 int PQI_PHYSICAL_DEVICE_BUS ;
 int PQI_RAID_VOLUME_BUS ;
 int get_unaligned_le32 (int *) ;
 scalar_t__ pqi_is_hba_lunid (int *) ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 int pqi_set_bus_target_lun (struct pqi_scsi_dev*,int,int,int) ;

__attribute__((used)) static void pqi_assign_bus_target_lun(struct pqi_scsi_dev *device)
{
 u8 *scsi3addr;
 u32 lunid;
 int bus;
 int target;
 int lun;

 scsi3addr = device->scsi3addr;
 lunid = get_unaligned_le32(scsi3addr);

 if (pqi_is_hba_lunid(scsi3addr)) {

  pqi_set_bus_target_lun(device, PQI_HBA_BUS, 0, lunid & 0x3fff);
  device->target_lun_valid = 1;
  return;
 }

 if (pqi_is_logical_device(device)) {
  if (device->is_external_raid_device) {
   bus = PQI_EXTERNAL_RAID_VOLUME_BUS;
   target = (lunid >> 16) & 0x3fff;
   lun = lunid & 0xff;
  } else {
   bus = PQI_RAID_VOLUME_BUS;
   target = 0;
   lun = lunid & 0x3fff;
  }
  pqi_set_bus_target_lun(device, bus, target, lun);
  device->target_lun_valid = 1;
  return;
 }





 pqi_set_bus_target_lun(device, PQI_PHYSICAL_DEVICE_BUS, 0, 0);
}
