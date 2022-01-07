
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int dev; scalar_t__* io_queues; } ;
struct blk_mq_tag_set {int nr_maps; struct blk_mq_queue_map* map; struct nvme_dev* driver_data; } ;
struct blk_mq_queue_map {int queue_offset; scalar_t__ nr_queues; } ;


 int BUG_ON (int) ;
 int HCTX_TYPE_DEFAULT ;
 int HCTX_TYPE_POLL ;
 int blk_mq_map_queues (struct blk_mq_queue_map*) ;
 int blk_mq_pci_map_queues (struct blk_mq_queue_map*,int ,int) ;
 int queue_irq_offset (struct nvme_dev*) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static int nvme_pci_map_queues(struct blk_mq_tag_set *set)
{
 struct nvme_dev *dev = set->driver_data;
 int i, qoff, offset;

 offset = queue_irq_offset(dev);
 for (i = 0, qoff = 0; i < set->nr_maps; i++) {
  struct blk_mq_queue_map *map = &set->map[i];

  map->nr_queues = dev->io_queues[i];
  if (!map->nr_queues) {
   BUG_ON(i == HCTX_TYPE_DEFAULT);
   continue;
  }





  map->queue_offset = qoff;
  if (i != HCTX_TYPE_POLL && offset)
   blk_mq_pci_map_queues(map, to_pci_dev(dev->dev), offset);
  else
   blk_mq_map_queues(map);
  qoff += map->nr_queues;
  offset += map->nr_queues;
 }

 return 0;
}
