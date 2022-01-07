
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hpsa_scsi_dev_t {scalar_t__ external; int rev; } ;
struct ctlr_info {int dummy; } ;


 int HPSA_EXTERNAL_RAID_VOLUME_BUS ;
 int HPSA_HBA_BUS ;
 int HPSA_LEGACY_HBA_BUS ;
 int HPSA_PHYSICAL_DEVICE_BUS ;
 int HPSA_RAID_VOLUME_BUS ;
 int get_unaligned_le32 (int *) ;
 int hpsa_set_bus_target_lun (struct hpsa_scsi_dev_t*,int,int,int) ;
 scalar_t__ is_hba_lunid (int *) ;
 int is_logical_dev_addr_mode (int *) ;

__attribute__((used)) static void figure_bus_target_lun(struct ctlr_info *h,
 u8 *lunaddrbytes, struct hpsa_scsi_dev_t *device)
{
 u32 lunid = get_unaligned_le32(lunaddrbytes);

 if (!is_logical_dev_addr_mode(lunaddrbytes)) {

  if (is_hba_lunid(lunaddrbytes)) {
   int bus = HPSA_HBA_BUS;

   if (!device->rev)
    bus = HPSA_LEGACY_HBA_BUS;
   hpsa_set_bus_target_lun(device,
     bus, 0, lunid & 0x3fff);
  } else

   hpsa_set_bus_target_lun(device,
     HPSA_PHYSICAL_DEVICE_BUS, -1, -1);
  return;
 }

 if (device->external) {
  hpsa_set_bus_target_lun(device,
   HPSA_EXTERNAL_RAID_VOLUME_BUS, (lunid >> 16) & 0x3fff,
   lunid & 0x00ff);
  return;
 }
 hpsa_set_bus_target_lun(device, HPSA_RAID_VOLUME_BUS,
    0, lunid & 0x3fff);
}
