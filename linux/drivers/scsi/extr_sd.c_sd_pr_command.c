
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;
struct block_device {int bd_disk; } ;
typedef int data ;
struct TYPE_2__ {struct scsi_device* device; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ DRIVER_SENSE ;
 int KERN_INFO ;
 int PERSISTENT_RESERVE_OUT ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 scalar_t__ driver_byte (int) ;
 int put_unaligned_be32 (int,int *) ;
 int put_unaligned_be64 (int ,int *) ;
 TYPE_1__* scsi_disk (int ) ;
 int scsi_execute_req (struct scsi_device*,int *,int ,int **,int,struct scsi_sense_hdr*,int ,int ,int *) ;
 int scsi_print_sense_hdr (struct scsi_device*,int *,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;

__attribute__((used)) static int sd_pr_command(struct block_device *bdev, u8 sa,
  u64 key, u64 sa_key, u8 type, u8 flags)
{
 struct scsi_device *sdev = scsi_disk(bdev->bd_disk)->device;
 struct scsi_sense_hdr sshdr;
 int result;
 u8 cmd[16] = { 0, };
 u8 data[24] = { 0, };

 cmd[0] = PERSISTENT_RESERVE_OUT;
 cmd[1] = sa;
 cmd[2] = type;
 put_unaligned_be32(sizeof(data), &cmd[5]);

 put_unaligned_be64(key, &data[0]);
 put_unaligned_be64(sa_key, &data[8]);
 data[20] = flags;

 result = scsi_execute_req(sdev, cmd, DMA_TO_DEVICE, &data, sizeof(data),
   &sshdr, SD_TIMEOUT, SD_MAX_RETRIES, ((void*)0));

 if (driver_byte(result) == DRIVER_SENSE &&
     scsi_sense_valid(&sshdr)) {
  sdev_printk(KERN_INFO, sdev, "PR command failed: %d\n", result);
  scsi_print_sense_hdr(sdev, ((void*)0), &sshdr);
 }

 return result;
}
