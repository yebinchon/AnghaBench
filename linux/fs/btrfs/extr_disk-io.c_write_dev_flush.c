
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
struct btrfs_device {int dev_state; int flush_wait; int bdev; struct bio* flush_bio; } ;
struct bio {int bi_opf; int * bi_private; int bi_end_io; } ;


 int BTRFS_DEV_STATE_FLUSH_SENT ;
 int QUEUE_FLAG_WC ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 struct request_queue* bdev_get_queue (int ) ;
 int bio_reset (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int btrfs_end_empty_barrier ;
 int btrfsic_submit_bio (struct bio*) ;
 int init_completion (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void write_dev_flush(struct btrfs_device *device)
{
 struct request_queue *q = bdev_get_queue(device->bdev);
 struct bio *bio = device->flush_bio;

 if (!test_bit(QUEUE_FLAG_WC, &q->queue_flags))
  return;

 bio_reset(bio);
 bio->bi_end_io = btrfs_end_empty_barrier;
 bio_set_dev(bio, device->bdev);
 bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH;
 init_completion(&device->flush_wait);
 bio->bi_private = &device->flush_wait;

 btrfsic_submit_bio(bio);
 set_bit(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state);
}
