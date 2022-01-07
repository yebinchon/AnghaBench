
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int ws16; int ws10; struct scsi_device* device; } ;
struct scsi_device {int no_write_same; int no_report_opcodes; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ no_write_same; } ;


 int INQUIRY ;
 int SD_BUF_SIZE ;
 int WRITE_SAME ;
 int WRITE_SAME_16 ;
 int scsi_get_vpd_page (struct scsi_device*,int,unsigned char*,int) ;
 int scsi_report_opcode (struct scsi_device*,unsigned char*,int ,int ) ;

__attribute__((used)) static void sd_read_write_same(struct scsi_disk *sdkp, unsigned char *buffer)
{
 struct scsi_device *sdev = sdkp->device;

 if (sdev->host->no_write_same) {
  sdev->no_write_same = 1;

  return;
 }

 if (scsi_report_opcode(sdev, buffer, SD_BUF_SIZE, INQUIRY) < 0) {

  int vpd_buf_len = 64;

  sdev->no_report_opcodes = 1;





  if (!scsi_get_vpd_page(sdev, 0x89, buffer, vpd_buf_len))
   sdev->no_write_same = 1;
 }

 if (scsi_report_opcode(sdev, buffer, SD_BUF_SIZE, WRITE_SAME_16) == 1)
  sdkp->ws16 = 1;

 if (scsi_report_opcode(sdev, buffer, SD_BUF_SIZE, WRITE_SAME) == 1)
  sdkp->ws10 = 1;
}
