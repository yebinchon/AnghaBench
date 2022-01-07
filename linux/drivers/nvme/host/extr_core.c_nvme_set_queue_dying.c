
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {int disk; int queue; int flags; } ;


 int NVME_NS_DEAD ;
 int blk_mq_unquiesce_queue (int ) ;
 int blk_set_queue_dying (int ) ;
 int revalidate_disk (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void nvme_set_queue_dying(struct nvme_ns *ns)
{




 if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
  return;
 blk_set_queue_dying(ns->queue);

 blk_mq_unquiesce_queue(ns->queue);



 revalidate_disk(ns->disk);
}
