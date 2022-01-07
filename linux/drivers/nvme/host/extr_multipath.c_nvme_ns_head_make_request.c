
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {struct nvme_ns_head* queuedata; } ;
struct nvme_ns_head {int srcu; int requeue_lock; int requeue_list; int disk; } ;
struct nvme_ns {TYPE_2__* head; TYPE_1__* disk; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int bi_sector; } ;
struct bio {int bi_status; TYPE_3__ bi_iter; TYPE_1__* bi_disk; int bi_opf; } ;
typedef int blk_qc_t ;
struct TYPE_5__ {int disk; } ;
struct TYPE_4__ {int queue; } ;


 int BLK_QC_T_NONE ;
 int BLK_STS_IOERR ;
 int REQ_NVME_MPATH ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 int dev_warn_ratelimited (struct device*,char*) ;
 int direct_make_request (struct bio*) ;
 int disk_devt (int ) ;
 struct device* disk_to_dev (int ) ;
 scalar_t__ likely (struct nvme_ns*) ;
 scalar_t__ nvme_available_path (struct nvme_ns_head*) ;
 struct nvme_ns* nvme_find_path (struct nvme_ns_head*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int trace_block_bio_remap (int ,struct bio*,int ,int ) ;

__attribute__((used)) static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
  struct bio *bio)
{
 struct nvme_ns_head *head = q->queuedata;
 struct device *dev = disk_to_dev(head->disk);
 struct nvme_ns *ns;
 blk_qc_t ret = BLK_QC_T_NONE;
 int srcu_idx;







 blk_queue_split(q, &bio);

 srcu_idx = srcu_read_lock(&head->srcu);
 ns = nvme_find_path(head);
 if (likely(ns)) {
  bio->bi_disk = ns->disk;
  bio->bi_opf |= REQ_NVME_MPATH;
  trace_block_bio_remap(bio->bi_disk->queue, bio,
          disk_devt(ns->head->disk),
          bio->bi_iter.bi_sector);
  ret = direct_make_request(bio);
 } else if (nvme_available_path(head)) {
  dev_warn_ratelimited(dev, "no usable path - requeuing I/O\n");

  spin_lock_irq(&head->requeue_lock);
  bio_list_add(&head->requeue_list, bio);
  spin_unlock_irq(&head->requeue_lock);
 } else {
  dev_warn_ratelimited(dev, "no available path - failing I/O\n");

  bio->bi_status = BLK_STS_IOERR;
  bio_endio(bio);
 }

 srcu_read_unlock(&head->srcu, srcu_idx);
 return ret;
}
