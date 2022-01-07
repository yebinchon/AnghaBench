
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct nvme_tcp_queue {TYPE_3__* ctrl; } ;
struct blk_mq_tags {int dummy; } ;
struct TYPE_5__ {struct blk_mq_tags** tags; } ;
struct TYPE_4__ {struct blk_mq_tags** tags; } ;
struct TYPE_6__ {TYPE_2__ tag_set; TYPE_1__ admin_tag_set; } ;


 size_t nvme_tcp_queue_id (struct nvme_tcp_queue*) ;

__attribute__((used)) static inline struct blk_mq_tags *nvme_tcp_tagset(struct nvme_tcp_queue *queue)
{
 u32 queue_idx = nvme_tcp_queue_id(queue);

 if (queue_idx == 0)
  return queue->ctrl->admin_tag_set.tags[queue_idx];
 return queue->ctrl->tag_set.tags[queue_idx - 1];
}
