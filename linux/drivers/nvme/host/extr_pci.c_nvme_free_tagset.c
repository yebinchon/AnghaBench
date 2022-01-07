
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tagset; } ;
struct TYPE_4__ {scalar_t__ tags; } ;
struct nvme_dev {TYPE_1__ ctrl; TYPE_2__ tagset; } ;


 int blk_mq_free_tag_set (TYPE_2__*) ;

__attribute__((used)) static void nvme_free_tagset(struct nvme_dev *dev)
{
 if (dev->tagset.tags)
  blk_mq_free_tag_set(&dev->tagset);
 dev->ctrl.tagset = ((void*)0);
}
