
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HPSA_VPD_LV_DEVICE_ID ;
 int VPD_PAGE ;
 int hpsa_scsi_do_inquiry (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ;
 int hpsa_vpd_page_supported (struct ctlr_info*,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int hpsa_get_device_id(struct ctlr_info *h, unsigned char *scsi3addr,
 unsigned char *device_id, int index, int buflen)
{
 int rc;
 unsigned char *buf;


 if (!hpsa_vpd_page_supported(h, scsi3addr, HPSA_VPD_LV_DEVICE_ID))
  return 1;

 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 rc = hpsa_scsi_do_inquiry(h, scsi3addr, VPD_PAGE |
     HPSA_VPD_LV_DEVICE_ID, buf, 64);
 if (rc == 0) {
  if (buflen > 16)
   buflen = 16;
  memcpy(device_id, &buf[8], buflen);
 }

 kfree(buf);

 return rc;
}
