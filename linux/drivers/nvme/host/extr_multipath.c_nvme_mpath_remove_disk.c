
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ns_head {TYPE_1__* disk; int requeue_work; } ;
struct TYPE_3__ {int flags; int queue; } ;


 int GENHD_FL_UP ;
 int blk_cleanup_queue (int ) ;
 int blk_set_queue_dying (int ) ;
 int del_gendisk (TYPE_1__*) ;
 int flush_work (int *) ;
 int kblockd_schedule_work (int *) ;
 int put_disk (TYPE_1__*) ;

void nvme_mpath_remove_disk(struct nvme_ns_head *head)
{
 if (!head->disk)
  return;
 if (head->disk->flags & GENHD_FL_UP)
  del_gendisk(head->disk);
 blk_set_queue_dying(head->disk->queue);

 kblockd_schedule_work(&head->requeue_work);
 flush_work(&head->requeue_work);
 blk_cleanup_queue(head->disk->queue);
 put_disk(head->disk);
}
