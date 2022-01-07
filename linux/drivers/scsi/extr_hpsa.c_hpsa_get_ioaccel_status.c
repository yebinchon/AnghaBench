
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hpsa_scsi_dev_t {int offload_config; int offload_to_be_enabled; scalar_t__ offload_enabled; } ;
struct ctlr_info {int dummy; } ;


 int GFP_KERNEL ;
 int HPSA_VPD_LV_IOACCEL_STATUS ;
 size_t IOACCEL_STATUS_BYTE ;
 int OFFLOAD_CONFIGURED_BIT ;
 int OFFLOAD_ENABLED_BIT ;
 int VPD_PAGE ;
 scalar_t__ hpsa_get_raid_map (struct ctlr_info*,unsigned char*,struct hpsa_scsi_dev_t*) ;
 int hpsa_scsi_do_inquiry (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ;
 int hpsa_vpd_page_supported (struct ctlr_info*,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;

__attribute__((used)) static void hpsa_get_ioaccel_status(struct ctlr_info *h,
 unsigned char *scsi3addr, struct hpsa_scsi_dev_t *this_device)
{
 int rc;
 unsigned char *buf;
 u8 ioaccel_status;

 this_device->offload_config = 0;
 this_device->offload_enabled = 0;
 this_device->offload_to_be_enabled = 0;

 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return;
 if (!hpsa_vpd_page_supported(h, scsi3addr, HPSA_VPD_LV_IOACCEL_STATUS))
  goto out;
 rc = hpsa_scsi_do_inquiry(h, scsi3addr,
   VPD_PAGE | HPSA_VPD_LV_IOACCEL_STATUS, buf, 64);
 if (rc != 0)
  goto out;




 ioaccel_status = buf[4];
 this_device->offload_config =
  !!(ioaccel_status & 0x01);
 if (this_device->offload_config) {
  this_device->offload_to_be_enabled =
   !!(ioaccel_status & 0x02);
  if (hpsa_get_raid_map(h, scsi3addr, this_device))
   this_device->offload_to_be_enabled = 0;
 }

out:
 kfree(buf);
 return;
}
