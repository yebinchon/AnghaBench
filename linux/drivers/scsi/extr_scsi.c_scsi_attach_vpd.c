
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_vpd {int len; int* data; } ;
struct scsi_device {int vpd_pg83; int vpd_pg80; } ;


 int kfree (struct scsi_vpd*) ;
 int scsi_device_supports_vpd (struct scsi_device*) ;
 struct scsi_vpd* scsi_get_vpd_buf (struct scsi_device*,int ) ;
 int scsi_update_vpd_page (struct scsi_device*,int,int *) ;

void scsi_attach_vpd(struct scsi_device *sdev)
{
 int i;
 struct scsi_vpd *vpd_buf;

 if (!scsi_device_supports_vpd(sdev))
  return;


 vpd_buf = scsi_get_vpd_buf(sdev, 0);
 if (!vpd_buf)
  return;

 for (i = 4; i < vpd_buf->len; i++) {
  if (vpd_buf->data[i] == 0x80)
   scsi_update_vpd_page(sdev, 0x80, &sdev->vpd_pg80);
  if (vpd_buf->data[i] == 0x83)
   scsi_update_vpd_page(sdev, 0x83, &sdev->vpd_pg83);
 }
 kfree(vpd_buf);
}
