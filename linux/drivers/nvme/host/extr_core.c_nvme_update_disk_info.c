
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvme_ns {int lba_shift; int ms; int pi_type; TYPE_3__* ctrl; int ext; } ;
struct nvme_id_ns {scalar_t__ nabo; int nsfeat; int nsattr; scalar_t__ nows; scalar_t__ npwg; scalar_t__ nawupf; int nsze; } ;
struct gendisk {int queue; } ;
typedef int sector_t ;
struct TYPE_6__ {TYPE_2__* ops; TYPE_1__* subsys; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int awupf; } ;


 int NVME_F_METADATA_SUPPORTED ;
 int PAGE_SHIFT ;
 int blk_get_integrity (struct gendisk*) ;
 int blk_integrity_unregister (struct gendisk*) ;
 int blk_mq_freeze_queue (int ) ;
 int blk_mq_unfreeze_queue (int ) ;
 int blk_queue_io_min (int ,int) ;
 int blk_queue_io_opt (int ,int) ;
 int blk_queue_logical_block_size (int ,unsigned short) ;
 int blk_queue_physical_block_size (int ,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int le64_to_cpu (int ) ;
 int min (int,int) ;
 int nvme_config_discard (struct gendisk*,struct nvme_ns*) ;
 int nvme_config_write_zeroes (struct gendisk*,struct nvme_ns*) ;
 int nvme_init_integrity (struct gendisk*,int ,int ) ;
 int nvme_ns_has_pi (struct nvme_ns*) ;
 int set_capacity (struct gendisk*,int) ;
 int set_disk_ro (struct gendisk*,int) ;

__attribute__((used)) static void nvme_update_disk_info(struct gendisk *disk,
  struct nvme_ns *ns, struct nvme_id_ns *id)
{
 sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 unsigned short bs = 1 << ns->lba_shift;
 u32 atomic_bs, phys_bs, io_opt;

 if (ns->lba_shift > PAGE_SHIFT) {

  bs = (1 << 9);
 }
 blk_mq_freeze_queue(disk->queue);
 blk_integrity_unregister(disk);

 if (id->nabo == 0) {





  if (id->nsfeat & (1 << 1) && id->nawupf)
   atomic_bs = (1 + le16_to_cpu(id->nawupf)) * bs;
  else
   atomic_bs = (1 + ns->ctrl->subsys->awupf) * bs;
 } else {
  atomic_bs = bs;
 }
 phys_bs = bs;
 io_opt = bs;
 if (id->nsfeat & (1 << 4)) {

  phys_bs *= 1 + le16_to_cpu(id->npwg);

  io_opt *= 1 + le16_to_cpu(id->nows);
 }

 blk_queue_logical_block_size(disk->queue, bs);





 blk_queue_physical_block_size(disk->queue, min(phys_bs, atomic_bs));
 blk_queue_io_min(disk->queue, phys_bs);
 blk_queue_io_opt(disk->queue, io_opt);

 if (ns->ms && !ns->ext &&
     (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
  nvme_init_integrity(disk, ns->ms, ns->pi_type);
 if ((ns->ms && !nvme_ns_has_pi(ns) && !blk_get_integrity(disk)) ||
     ns->lba_shift > PAGE_SHIFT)
  capacity = 0;

 set_capacity(disk, capacity);

 nvme_config_discard(disk, ns);
 nvme_config_write_zeroes(disk, ns);

 if (id->nsattr & (1 << 0))
  set_disk_ro(disk, 1);
 else
  set_disk_ro(disk, 0);

 blk_mq_unfreeze_queue(disk->queue);
}
