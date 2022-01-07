
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ admin_q; } ;
struct nvme_dev {int admin_tagset; TYPE_1__ ctrl; } ;


 int blk_cleanup_queue (scalar_t__) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_mq_unquiesce_queue (scalar_t__) ;
 int blk_queue_dying (scalar_t__) ;

__attribute__((used)) static void nvme_dev_remove_admin(struct nvme_dev *dev)
{
 if (dev->ctrl.admin_q && !blk_queue_dying(dev->ctrl.admin_q)) {





  blk_mq_unquiesce_queue(dev->ctrl.admin_q);
  blk_cleanup_queue(dev->ctrl.admin_q);
  blk_mq_free_tag_set(&dev->admin_tagset);
 }
}
