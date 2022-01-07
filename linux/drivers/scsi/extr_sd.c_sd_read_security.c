
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int security; struct scsi_device* device; } ;
struct scsi_device {int security_supported; } ;


 int SD_BUF_SIZE ;
 int SECURITY_PROTOCOL_IN ;
 int SECURITY_PROTOCOL_OUT ;
 int scsi_report_opcode (struct scsi_device*,unsigned char*,int ,int ) ;

__attribute__((used)) static void sd_read_security(struct scsi_disk *sdkp, unsigned char *buffer)
{
 struct scsi_device *sdev = sdkp->device;

 if (!sdev->security_supported)
  return;

 if (scsi_report_opcode(sdev, buffer, SD_BUF_SIZE,
   SECURITY_PROTOCOL_IN) == 1 &&
     scsi_report_opcode(sdev, buffer, SD_BUF_SIZE,
   SECURITY_PROTOCOL_OUT) == 1)
  sdkp->security = 1;
}
