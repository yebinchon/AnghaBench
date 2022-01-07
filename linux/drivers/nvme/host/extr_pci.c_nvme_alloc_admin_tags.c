
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvme_iod {int dummy; } ;
struct TYPE_5__ {int * admin_q; TYPE_2__* admin_tagset; } ;
struct TYPE_6__ {int nr_hw_queues; int cmd_size; struct nvme_dev* driver_data; int flags; int numa_node; int timeout; int queue_depth; int * ops; } ;
struct nvme_dev {TYPE_1__ ctrl; TYPE_2__ admin_tagset; int dev; } ;


 int ADMIN_TIMEOUT ;
 int BLK_MQ_F_NO_SCHED ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int NVME_AQ_MQ_TAG_DEPTH ;
 int blk_get_queue (int *) ;
 scalar_t__ blk_mq_alloc_tag_set (TYPE_2__*) ;
 int blk_mq_free_tag_set (TYPE_2__*) ;
 int * blk_mq_init_queue (TYPE_2__*) ;
 int blk_mq_unquiesce_queue (int *) ;
 int dev_to_node (int ) ;
 int nvme_dev_remove_admin (struct nvme_dev*) ;
 int nvme_mq_admin_ops ;

__attribute__((used)) static int nvme_alloc_admin_tags(struct nvme_dev *dev)
{
 if (!dev->ctrl.admin_q) {
  dev->admin_tagset.ops = &nvme_mq_admin_ops;
  dev->admin_tagset.nr_hw_queues = 1;

  dev->admin_tagset.queue_depth = NVME_AQ_MQ_TAG_DEPTH;
  dev->admin_tagset.timeout = ADMIN_TIMEOUT;
  dev->admin_tagset.numa_node = dev_to_node(dev->dev);
  dev->admin_tagset.cmd_size = sizeof(struct nvme_iod);
  dev->admin_tagset.flags = BLK_MQ_F_NO_SCHED;
  dev->admin_tagset.driver_data = dev;

  if (blk_mq_alloc_tag_set(&dev->admin_tagset))
   return -ENOMEM;
  dev->ctrl.admin_tagset = &dev->admin_tagset;

  dev->ctrl.admin_q = blk_mq_init_queue(&dev->admin_tagset);
  if (IS_ERR(dev->ctrl.admin_q)) {
   blk_mq_free_tag_set(&dev->admin_tagset);
   return -ENOMEM;
  }
  if (!blk_get_queue(dev->ctrl.admin_q)) {
   nvme_dev_remove_admin(dev);
   dev->ctrl.admin_q = ((void*)0);
   return -ENODEV;
  }
 } else
  blk_mq_unquiesce_queue(dev->ctrl.admin_q);

 return 0;
}
