
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int dummy; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {TYPE_1__* request_queue; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int rq_timeout; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int KERN_ERR ;
 int SD_MAX_RETRIES ;
 unsigned char ZBC_IN ;
 unsigned char ZBC_REPORT_ZONE_PARTIAL ;
 unsigned char ZI_REPORT_ZONES ;
 int driver_byte (int) ;
 unsigned int get_unaligned_be32 (unsigned char*) ;
 int host_byte (int) ;
 int memset (unsigned char*,int ,int) ;
 int put_unaligned_be32 (unsigned int,unsigned char*) ;
 int put_unaligned_be64 (scalar_t__,unsigned char*) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,unsigned int,struct scsi_sense_hdr*,int const,int ,int *) ;
 int sd_printk (int ,struct scsi_disk*,char*,unsigned int,...) ;

__attribute__((used)) static int sd_zbc_do_report_zones(struct scsi_disk *sdkp, unsigned char *buf,
      unsigned int buflen, sector_t lba,
      bool partial)
{
 struct scsi_device *sdp = sdkp->device;
 const int timeout = sdp->request_queue->rq_timeout;
 struct scsi_sense_hdr sshdr;
 unsigned char cmd[16];
 unsigned int rep_len;
 int result;

 memset(cmd, 0, 16);
 cmd[0] = ZBC_IN;
 cmd[1] = ZI_REPORT_ZONES;
 put_unaligned_be64(lba, &cmd[2]);
 put_unaligned_be32(buflen, &cmd[10]);
 if (partial)
  cmd[14] = ZBC_REPORT_ZONE_PARTIAL;

 result = scsi_execute_req(sdp, cmd, DMA_FROM_DEVICE,
      buf, buflen, &sshdr,
      timeout, SD_MAX_RETRIES, ((void*)0));
 if (result) {
  sd_printk(KERN_ERR, sdkp,
     "REPORT ZONES lba %llu failed with %d/%d\n",
     (unsigned long long)lba,
     host_byte(result), driver_byte(result));
  return -EIO;
 }

 rep_len = get_unaligned_be32(&buf[0]);
 if (rep_len < 64) {
  sd_printk(KERN_ERR, sdkp,
     "REPORT ZONES report invalid length %u\n",
     rep_len);
  return -EIO;
 }

 return 0;
}
