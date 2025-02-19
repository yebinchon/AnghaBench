
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {unsigned long long capacity; int physical_block_size; unsigned char rc_basis; int lbpme; int lbprz; scalar_t__ first_scan; } ;
struct scsi_device {int request_queue; scalar_t__ no_read_capacity_16; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ ILLEGAL_REQUEST ;
 int KERN_NOTICE ;
 int RC16_LEN ;
 int READ_CAPACITY_RETRIES_ON_RESET ;
 unsigned char SAI_READ_CAPACITY_16 ;
 int SD_LBP_WS16 ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 unsigned char SERVICE_ACTION_IN_16 ;
 scalar_t__ UNIT_ATTENTION ;
 int blk_queue_alignment_offset (int ,unsigned int) ;
 unsigned int get_unaligned_be32 (unsigned char*) ;
 unsigned long long get_unaligned_be64 (unsigned char*) ;
 scalar_t__ media_not_present (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int memset (unsigned char*,int ,int) ;
 int read_capacity_error (struct scsi_disk*,struct scsi_device*,struct scsi_sense_hdr*,int,int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,struct scsi_sense_hdr*,int ,int ,int *) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sd_config_discard (struct scsi_disk*,int ) ;
 int sd_print_result (struct scsi_disk*,char*,int) ;
 int sd_printk (int ,struct scsi_disk*,char*,unsigned int) ;
 scalar_t__ sd_read_protection_type (struct scsi_disk*,unsigned char*) ;

__attribute__((used)) static int read_capacity_16(struct scsi_disk *sdkp, struct scsi_device *sdp,
      unsigned char *buffer)
{
 unsigned char cmd[16];
 struct scsi_sense_hdr sshdr;
 int sense_valid = 0;
 int the_result;
 int retries = 3, reset_retries = READ_CAPACITY_RETRIES_ON_RESET;
 unsigned int alignment;
 unsigned long long lba;
 unsigned sector_size;

 if (sdp->no_read_capacity_16)
  return -EINVAL;

 do {
  memset(cmd, 0, 16);
  cmd[0] = SERVICE_ACTION_IN_16;
  cmd[1] = SAI_READ_CAPACITY_16;
  cmd[13] = RC16_LEN;
  memset(buffer, 0, RC16_LEN);

  the_result = scsi_execute_req(sdp, cmd, DMA_FROM_DEVICE,
     buffer, RC16_LEN, &sshdr,
     SD_TIMEOUT, SD_MAX_RETRIES, ((void*)0));

  if (media_not_present(sdkp, &sshdr))
   return -ENODEV;

  if (the_result) {
   sense_valid = scsi_sense_valid(&sshdr);
   if (sense_valid &&
       sshdr.sense_key == ILLEGAL_REQUEST &&
       (sshdr.asc == 0x20 || sshdr.asc == 0x24) &&
       sshdr.ascq == 0x00)



    return -EINVAL;
   if (sense_valid &&
       sshdr.sense_key == UNIT_ATTENTION &&
       sshdr.asc == 0x29 && sshdr.ascq == 0x00)


    if (--reset_retries > 0)
     continue;
  }
  retries--;

 } while (the_result && retries);

 if (the_result) {
  sd_print_result(sdkp, "Read Capacity(16) failed", the_result);
  read_capacity_error(sdkp, sdp, &sshdr, sense_valid, the_result);
  return -EINVAL;
 }

 sector_size = get_unaligned_be32(&buffer[8]);
 lba = get_unaligned_be64(&buffer[0]);

 if (sd_read_protection_type(sdkp, buffer) < 0) {
  sdkp->capacity = 0;
  return -ENODEV;
 }


 sdkp->physical_block_size = (1 << (buffer[13] & 0xf)) * sector_size;


 sdkp->rc_basis = (buffer[12] >> 4) & 0x3;


 alignment = ((buffer[14] & 0x3f) << 8 | buffer[15]) * sector_size;
 blk_queue_alignment_offset(sdp->request_queue, alignment);
 if (alignment && sdkp->first_scan)
  sd_printk(KERN_NOTICE, sdkp,
     "physical block alignment offset: %u\n", alignment);

 if (buffer[14] & 0x80) {
  sdkp->lbpme = 1;

  if (buffer[14] & 0x40)
   sdkp->lbprz = 1;

  sd_config_discard(sdkp, SD_LBP_WS16);
 }

 sdkp->capacity = lba + 1;
 return sector_size;
}
