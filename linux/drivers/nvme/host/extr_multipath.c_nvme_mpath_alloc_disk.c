
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int limits; struct nvme_ns_head* queuedata; } ;
struct nvme_ns_head {int instance; TYPE_2__* disk; int requeue_work; int requeue_lock; int requeue_list; int lock; } ;
struct nvme_ctrl {int vwc; TYPE_1__* subsys; int numa_node; } ;
struct TYPE_4__ {int disk_name; int flags; struct request_queue* queue; struct nvme_ns_head* private_data; int * fops; } ;
struct TYPE_3__ {int cmic; int instance; } ;


 int ENOMEM ;
 int GENHD_FL_EXT_DEVT ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int NVME_CTRL_VWC_PRESENT ;
 int QUEUE_FLAG_NONROT ;
 TYPE_2__* alloc_disk (int ) ;
 int bio_list_init (int *) ;
 struct request_queue* blk_alloc_queue_node (int ,int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_logical_block_size (struct request_queue*,int) ;
 int blk_queue_make_request (struct request_queue*,int ) ;
 int blk_queue_write_cache (struct request_queue*,int,int) ;
 int blk_set_stacking_limits (int *) ;
 int multipath ;
 int mutex_init (int *) ;
 int nvme_ns_head_make_request ;
 int nvme_ns_head_ops ;
 int nvme_requeue_work ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int,int) ;

int nvme_mpath_alloc_disk(struct nvme_ctrl *ctrl, struct nvme_ns_head *head)
{
 struct request_queue *q;
 bool vwc = 0;

 mutex_init(&head->lock);
 bio_list_init(&head->requeue_list);
 spin_lock_init(&head->requeue_lock);
 INIT_WORK(&head->requeue_work, nvme_requeue_work);






 if (!(ctrl->subsys->cmic & (1 << 1)) || !multipath)
  return 0;

 q = blk_alloc_queue_node(GFP_KERNEL, ctrl->numa_node);
 if (!q)
  goto out;
 q->queuedata = head;
 blk_queue_make_request(q, nvme_ns_head_make_request);
 blk_queue_flag_set(QUEUE_FLAG_NONROT, q);

 blk_queue_logical_block_size(q, 512);
 blk_set_stacking_limits(&q->limits);


 if (ctrl->vwc & NVME_CTRL_VWC_PRESENT)
  vwc = 1;
 blk_queue_write_cache(q, vwc, vwc);

 head->disk = alloc_disk(0);
 if (!head->disk)
  goto out_cleanup_queue;
 head->disk->fops = &nvme_ns_head_ops;
 head->disk->private_data = head;
 head->disk->queue = q;
 head->disk->flags = GENHD_FL_EXT_DEVT;
 sprintf(head->disk->disk_name, "nvme%dn%d",
   ctrl->subsys->instance, head->instance);
 return 0;

out_cleanup_queue:
 blk_cleanup_queue(q);
out:
 return -ENOMEM;
}
