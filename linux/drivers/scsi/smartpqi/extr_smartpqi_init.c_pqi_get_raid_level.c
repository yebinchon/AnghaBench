
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pqi_scsi_dev {scalar_t__ raid_level; int scsi3addr; } ;
struct pqi_ctrl_info {int dummy; } ;


 int CISS_VPD_LV_DEVICE_GEOMETRY ;
 int GFP_KERNEL ;
 scalar_t__ SA_RAID_MAX ;
 scalar_t__ SA_RAID_UNKNOWN ;
 int VPD_PAGE ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int pqi_scsi_inquiry (struct pqi_ctrl_info*,int ,int,scalar_t__*,int) ;

__attribute__((used)) static void pqi_get_raid_level(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;
 u8 raid_level;
 u8 *buffer;

 raid_level = SA_RAID_UNKNOWN;

 buffer = kmalloc(64, GFP_KERNEL);
 if (buffer) {
  rc = pqi_scsi_inquiry(ctrl_info, device->scsi3addr,
   VPD_PAGE | CISS_VPD_LV_DEVICE_GEOMETRY, buffer, 64);
  if (rc == 0) {
   raid_level = buffer[8];
   if (raid_level > SA_RAID_MAX)
    raid_level = SA_RAID_UNKNOWN;
  }
  kfree(buffer);
 }

 device->raid_level = raid_level;
}
