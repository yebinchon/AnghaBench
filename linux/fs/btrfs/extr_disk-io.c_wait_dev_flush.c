
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int flush_wait; int dev_state; struct bio* flush_bio; } ;
struct bio {int bi_status; } ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 int BTRFS_DEV_STATE_FLUSH_SENT ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static blk_status_t wait_dev_flush(struct btrfs_device *device)
{
 struct bio *bio = device->flush_bio;

 if (!test_bit(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state))
  return BLK_STS_OK;

 clear_bit(BTRFS_DEV_STATE_FLUSH_SENT, &device->dev_state);
 wait_for_completion_io(&device->flush_wait);

 return bio->bi_status;
}
