
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_vpd {int len; int data; } ;
struct scsi_device {int dummy; } ;


 int GFP_KERNEL ;
 int SCSI_VPD_PG_LEN ;
 int kfree (struct scsi_vpd*) ;
 struct scsi_vpd* kmalloc (int,int ) ;
 int scsi_vpd_inquiry (struct scsi_device*,int ,int ,int) ;

__attribute__((used)) static struct scsi_vpd *scsi_get_vpd_buf(struct scsi_device *sdev, u8 page)
{
 struct scsi_vpd *vpd_buf;
 int vpd_len = SCSI_VPD_PG_LEN, result;

retry_pg:
 vpd_buf = kmalloc(sizeof(*vpd_buf) + vpd_len, GFP_KERNEL);
 if (!vpd_buf)
  return ((void*)0);

 result = scsi_vpd_inquiry(sdev, vpd_buf->data, page, vpd_len);
 if (result < 0) {
  kfree(vpd_buf);
  return ((void*)0);
 }
 if (result > vpd_len) {
  vpd_len = result;
  kfree(vpd_buf);
  goto retry_pg;
 }

 vpd_buf->len = result;

 return vpd_buf;
}
