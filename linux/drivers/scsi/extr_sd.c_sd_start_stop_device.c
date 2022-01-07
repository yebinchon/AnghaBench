
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int asc; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ start_stop_pwr_cond; } ;


 int DMA_NONE ;
 scalar_t__ DRIVER_SENSE ;
 int EIO ;
 int ENODEV ;
 int RQF_PM ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 unsigned char START_STOP ;
 scalar_t__ driver_byte (int) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_execute (struct scsi_device*,unsigned char*,int ,int *,int ,int *,struct scsi_sense_hdr*,int ,int ,int ,int ,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sd_print_result (struct scsi_disk*,char*,int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sd_start_stop_device(struct scsi_disk *sdkp, int start)
{
 unsigned char cmd[6] = { START_STOP };
 struct scsi_sense_hdr sshdr;
 struct scsi_device *sdp = sdkp->device;
 int res;

 if (start)
  cmd[4] |= 1;

 if (sdp->start_stop_pwr_cond)
  cmd[4] |= start ? 1 << 4 : 3 << 4;

 if (!scsi_device_online(sdp))
  return -ENODEV;

 res = scsi_execute(sdp, cmd, DMA_NONE, ((void*)0), 0, ((void*)0), &sshdr,
   SD_TIMEOUT, SD_MAX_RETRIES, 0, RQF_PM, ((void*)0));
 if (res) {
  sd_print_result(sdkp, "Start/Stop Unit failed", res);
  if (driver_byte(res) == DRIVER_SENSE)
   sd_print_sense_hdr(sdkp, &sshdr);
  if (scsi_sense_valid(&sshdr) &&

   sshdr.asc == 0x3a)
   res = 0;
 }


 if (res)
  return -EIO;

 return 0;
}
