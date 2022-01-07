
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct scsi_disk {unsigned char zoned; scalar_t__ first_scan; TYPE_3__* device; TYPE_1__* disk; } ;
struct TYPE_5__ {scalar_t__ zoned; } ;
struct request_queue {TYPE_2__ limits; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {struct request_queue* queue; } ;


 scalar_t__ BLK_ZONED_HA ;
 scalar_t__ BLK_ZONED_HM ;
 scalar_t__ BLK_ZONED_NONE ;
 int GFP_KERNEL ;
 int KERN_NOTICE ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 scalar_t__ TYPE_ZBC ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ blk_queue_is_zoned (struct request_queue*) ;
 int get_unaligned_be16 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int const,int ) ;
 scalar_t__ scsi_get_vpd_page (TYPE_3__*,int,unsigned char*,int const) ;
 int sd_printk (int ,struct scsi_disk*,char*,char*) ;

__attribute__((used)) static void sd_read_block_characteristics(struct scsi_disk *sdkp)
{
 struct request_queue *q = sdkp->disk->queue;
 unsigned char *buffer;
 u16 rot;
 const int vpd_len = 64;

 buffer = kmalloc(vpd_len, GFP_KERNEL);

 if (!buffer ||

     scsi_get_vpd_page(sdkp->device, 0xb1, buffer, vpd_len))
  goto out;

 rot = get_unaligned_be16(&buffer[4]);

 if (rot == 1) {
  blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
  blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, q);
 }

 if (sdkp->device->type == TYPE_ZBC) {

  q->limits.zoned = BLK_ZONED_HM;
 } else {
  sdkp->zoned = (buffer[8] >> 4) & 3;
  if (sdkp->zoned == 1)

   q->limits.zoned = BLK_ZONED_HA;
  else




   q->limits.zoned = BLK_ZONED_NONE;
 }
 if (blk_queue_is_zoned(q) && sdkp->first_scan)
  sd_printk(KERN_NOTICE, sdkp, "Host-%s zoned block device\n",
        q->limits.zoned == BLK_ZONED_HM ? "managed" : "aware");

 out:
 kfree(buffer);
}
