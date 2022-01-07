
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct scsi_device {int sector_size; } ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int HZ ;
 int MAX_COMMAND_SIZE ;
 unsigned char MODE_SENSE ;
 int get_unaligned_be24 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,int *,int ,int,int *) ;

__attribute__((used)) static void pscsi_tape_read_blocksize(struct se_device *dev,
  struct scsi_device *sdev)
{
 unsigned char cdb[MAX_COMMAND_SIZE], *buf;
 int ret;

 buf = kzalloc(12, GFP_KERNEL);
 if (!buf)
  goto out_free;

 memset(cdb, 0, MAX_COMMAND_SIZE);
 cdb[0] = MODE_SENSE;
 cdb[4] = 0x0c;

 ret = scsi_execute_req(sdev, cdb, DMA_FROM_DEVICE, buf, 12, ((void*)0),
   HZ, 1, ((void*)0));
 if (ret)
  goto out_free;




 sdev->sector_size = get_unaligned_be24(&buf[9]);
out_free:
 if (!sdev->sector_size)
  sdev->sector_size = 1024;

 kfree(buf);
}
