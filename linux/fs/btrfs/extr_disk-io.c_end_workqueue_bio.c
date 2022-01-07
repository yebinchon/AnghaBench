
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workqueue {int dummy; } ;
struct btrfs_fs_info {struct btrfs_workqueue* endio_workers; struct btrfs_workqueue* endio_meta_workers; struct btrfs_workqueue* endio_raid56_workers; struct btrfs_workqueue* endio_repair_workers; struct btrfs_workqueue* endio_write_workers; struct btrfs_workqueue* endio_freespace_worker; struct btrfs_workqueue* endio_meta_write_workers; } ;
struct btrfs_end_io_wq {scalar_t__ metadata; int work; int status; struct btrfs_fs_info* info; } ;
struct bio {int bi_status; struct btrfs_end_io_wq* bi_private; } ;
typedef int btrfs_work_func_t ;


 scalar_t__ BTRFS_WQ_ENDIO_DIO_REPAIR ;
 scalar_t__ BTRFS_WQ_ENDIO_FREE_SPACE ;
 scalar_t__ BTRFS_WQ_ENDIO_METADATA ;
 scalar_t__ BTRFS_WQ_ENDIO_RAID56 ;
 scalar_t__ REQ_OP_WRITE ;
 scalar_t__ bio_op (struct bio*) ;
 int btrfs_endio_helper ;
 int btrfs_endio_meta_helper ;
 int btrfs_endio_meta_write_helper ;
 int btrfs_endio_raid56_helper ;
 int btrfs_endio_repair_helper ;
 int btrfs_endio_write_helper ;
 int btrfs_freespace_write_helper ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (struct btrfs_workqueue*,int *) ;
 int end_workqueue_fn ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void end_workqueue_bio(struct bio *bio)
{
 struct btrfs_end_io_wq *end_io_wq = bio->bi_private;
 struct btrfs_fs_info *fs_info;
 struct btrfs_workqueue *wq;
 btrfs_work_func_t func;

 fs_info = end_io_wq->info;
 end_io_wq->status = bio->bi_status;

 if (bio_op(bio) == REQ_OP_WRITE) {
  if (end_io_wq->metadata == BTRFS_WQ_ENDIO_METADATA) {
   wq = fs_info->endio_meta_write_workers;
   func = btrfs_endio_meta_write_helper;
  } else if (end_io_wq->metadata == BTRFS_WQ_ENDIO_FREE_SPACE) {
   wq = fs_info->endio_freespace_worker;
   func = btrfs_freespace_write_helper;
  } else if (end_io_wq->metadata == BTRFS_WQ_ENDIO_RAID56) {
   wq = fs_info->endio_raid56_workers;
   func = btrfs_endio_raid56_helper;
  } else {
   wq = fs_info->endio_write_workers;
   func = btrfs_endio_write_helper;
  }
 } else {
  if (unlikely(end_io_wq->metadata ==
        BTRFS_WQ_ENDIO_DIO_REPAIR)) {
   wq = fs_info->endio_repair_workers;
   func = btrfs_endio_repair_helper;
  } else if (end_io_wq->metadata == BTRFS_WQ_ENDIO_RAID56) {
   wq = fs_info->endio_raid56_workers;
   func = btrfs_endio_raid56_helper;
  } else if (end_io_wq->metadata) {
   wq = fs_info->endio_meta_workers;
   func = btrfs_endio_meta_helper;
  } else {
   wq = fs_info->endio_workers;
   func = btrfs_endio_helper;
  }
 }

 btrfs_init_work(&end_io_wq->work, func, end_workqueue_fn, ((void*)0), ((void*)0));
 btrfs_queue_work(wq, &end_io_wq->work);
}
