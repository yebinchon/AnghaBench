
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int asc; int ascq; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {TYPE_1__* request_queue; } ;
struct TYPE_2__ {int rq_timeout; } ;
 int DMA_NONE ;
 scalar_t__ DRIVER_SENSE ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int RQF_PM ;
 int SD_FLUSH_TIMEOUT_MULTIPLIER ;
 int SD_MAX_RETRIES ;
 unsigned char SYNCHRONIZE_CACHE ;
 scalar_t__ driver_byte (int) ;
 int host_byte (int) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_execute (struct scsi_device*,unsigned char*,int ,int *,int ,int *,struct scsi_sense_hdr*,int const,int ,int ,int ,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sd_print_result (struct scsi_disk*,char*,int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sd_sync_cache(struct scsi_disk *sdkp, struct scsi_sense_hdr *sshdr)
{
 int retries, res;
 struct scsi_device *sdp = sdkp->device;
 const int timeout = sdp->request_queue->rq_timeout
  * SD_FLUSH_TIMEOUT_MULTIPLIER;
 struct scsi_sense_hdr my_sshdr;

 if (!scsi_device_online(sdp))
  return -ENODEV;


 if (!sshdr)
  sshdr = &my_sshdr;

 for (retries = 3; retries > 0; --retries) {
  unsigned char cmd[10] = { 0 };

  cmd[0] = SYNCHRONIZE_CACHE;




  res = scsi_execute(sdp, cmd, DMA_NONE, ((void*)0), 0, ((void*)0), sshdr,
    timeout, SD_MAX_RETRIES, 0, RQF_PM, ((void*)0));
  if (res == 0)
   break;
 }

 if (res) {
  sd_print_result(sdkp, "Synchronize Cache(10) failed", res);

  if (driver_byte(res) == DRIVER_SENSE)
   sd_print_sense_hdr(sdkp, sshdr);


  if (scsi_sense_valid(sshdr) &&
   (sshdr->asc == 0x3a ||
    sshdr->asc == 0x20 ||
    (sshdr->asc == 0x74 && sshdr->ascq == 0x71)))

    return 0;

  switch (host_byte(res)) {

  case 133:
  case 130:
   return 0;

  case 132:
  case 131:
  case 129:
  case 128:
   return -EBUSY;
  default:
   return -EIO;
  }
 }
 return 0;
}
