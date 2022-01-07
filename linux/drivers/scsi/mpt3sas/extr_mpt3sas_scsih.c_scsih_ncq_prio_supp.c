
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int GFP_KERNEL ;
 int SCSI_VPD_PG_LEN ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int scsi_device_supports_vpd (struct scsi_device*) ;
 int scsi_get_vpd_page (struct scsi_device*,int,unsigned char*,int ) ;

bool scsih_ncq_prio_supp(struct scsi_device *sdev)
{
 unsigned char *buf;
 bool ncq_prio_supp = 0;

 if (!scsi_device_supports_vpd(sdev))
  return ncq_prio_supp;

 buf = kmalloc(SCSI_VPD_PG_LEN, GFP_KERNEL);
 if (!buf)
  return ncq_prio_supp;

 if (!scsi_get_vpd_page(sdev, 0x89, buf, SCSI_VPD_PG_LEN))
  ncq_prio_supp = (buf[213] >> 4) & 1;

 kfree(buf);
 return ncq_prio_supp;
}
