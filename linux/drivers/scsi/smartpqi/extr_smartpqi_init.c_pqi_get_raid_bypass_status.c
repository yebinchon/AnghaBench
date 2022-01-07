
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_scsi_dev {int raid_bypass_configured; int raid_bypass_enabled; int scsi3addr; } ;
struct pqi_ctrl_info {int dummy; } ;


 int CISS_VPD_LV_BYPASS_STATUS ;
 int GFP_KERNEL ;
 int RAID_BYPASS_CONFIGURED ;
 int RAID_BYPASS_ENABLED ;
 size_t RAID_BYPASS_STATUS ;
 int VPD_PAGE ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 scalar_t__ pqi_get_raid_map (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ;
 int pqi_scsi_inquiry (struct pqi_ctrl_info*,int ,int,int*,int) ;

__attribute__((used)) static void pqi_get_raid_bypass_status(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;
 u8 *buffer;
 u8 bypass_status;

 buffer = kmalloc(64, GFP_KERNEL);
 if (!buffer)
  return;

 rc = pqi_scsi_inquiry(ctrl_info, device->scsi3addr,
  VPD_PAGE | CISS_VPD_LV_BYPASS_STATUS, buffer, 64);
 if (rc)
  goto out;





 bypass_status = buffer[4];
 device->raid_bypass_configured =
  (bypass_status & 0x1) != 0;
 if (device->raid_bypass_configured &&
  (bypass_status & 0x2) &&
  pqi_get_raid_map(ctrl_info, device) == 0)
  device->raid_bypass_enabled = 1;

out:
 kfree(buffer);
}
