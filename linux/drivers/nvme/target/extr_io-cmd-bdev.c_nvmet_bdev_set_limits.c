
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct queue_limits {int physical_block_size; int logical_block_size; int const discard_granularity; int const io_opt; } ;
struct nvme_id_ns {int nsfeat; void* nows; void* npdg; void* npda; void* npwg; void* npwa; void* nacwu; void* nawupf; void* nawun; } ;
struct block_device {int dummy; } ;
typedef void* __le16 ;
struct TYPE_2__ {struct queue_limits limits; } ;


 TYPE_1__* bdev_get_queue (struct block_device*) ;
 void* to0based (int const) ;

void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
{
 const struct queue_limits *ql = &bdev_get_queue(bdev)->limits;

 const u32 lpp = ql->physical_block_size / ql->logical_block_size;

 const __le16 lpp0b = to0based(lpp);
 id->nsfeat |= 1 << 1;
 id->nawun = lpp0b;
 id->nawupf = lpp0b;
 id->nacwu = lpp0b;






 id->nsfeat |= 1 << 4;

 id->npwg = lpp0b;

 id->npwa = id->npwg;

 id->npdg = to0based(ql->discard_granularity / ql->logical_block_size);

 id->npda = id->npdg;

 id->nows = to0based(ql->io_opt / ql->logical_block_size);
}
