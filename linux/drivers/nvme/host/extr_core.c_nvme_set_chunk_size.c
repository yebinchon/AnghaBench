
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_ns {int lba_shift; int queue; scalar_t__ noiob; } ;


 int blk_queue_chunk_sectors (int ,int ) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static void nvme_set_chunk_size(struct nvme_ns *ns)
{
 u32 chunk_size = (((u32)ns->noiob) << (ns->lba_shift - 9));
 blk_queue_chunk_sectors(ns->queue, rounddown_pow_of_two(chunk_size));
}
