
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned short u32 ;
struct nvme_ns {int lba_shift; TYPE_1__* ctrl; } ;
struct gendisk {int queue; } ;
struct TYPE_2__ {int oncs; int quirks; scalar_t__ max_hw_sectors; } ;


 int NVME_CTRL_ONCS_WRITE_ZEROES ;
 int NVME_QUIRK_DISABLE_WRITE_ZEROES ;
 scalar_t__ UINT_MAX ;
 scalar_t__ USHRT_MAX ;
 int blk_queue_max_write_zeroes_sectors (int ,unsigned short) ;

__attribute__((used)) static void nvme_config_write_zeroes(struct gendisk *disk, struct nvme_ns *ns)
{
 u32 max_sectors;
 unsigned short bs = 1 << ns->lba_shift;

 if (!(ns->ctrl->oncs & NVME_CTRL_ONCS_WRITE_ZEROES) ||
     (ns->ctrl->quirks & NVME_QUIRK_DISABLE_WRITE_ZEROES))
  return;
 if (ns->ctrl->max_hw_sectors == UINT_MAX)
  max_sectors = ((u32)(USHRT_MAX + 1) * bs) >> 9;
 else
  max_sectors = ((u32)(ns->ctrl->max_hw_sectors + 1) * bs) >> 9;

 blk_queue_max_write_zeroes_sectors(disk->queue, max_sectors);
}
