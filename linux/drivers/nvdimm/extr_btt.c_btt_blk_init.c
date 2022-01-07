
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u64 ;
struct nd_namespace_common {int dummy; } ;
struct nd_btt {int size; int dev; struct nd_namespace_common* ndns; } ;
struct btt {int sector_size; int nlba; TYPE_2__* btt_disk; struct nd_btt* nd_btt; TYPE_8__* btt_queue; } ;
struct TYPE_17__ {struct btt* queuedata; TYPE_1__* backing_dev_info; } ;
struct TYPE_16__ {TYPE_8__* queue; int flags; struct btt* private_data; int * fops; scalar_t__ first_minor; int disk_name; } ;
struct TYPE_15__ {int capabilities; } ;


 int BDI_CAP_SYNCHRONOUS_IO ;
 int ENOMEM ;
 int GENHD_FL_EXT_DEVT ;
 int GFP_KERNEL ;
 int QUEUE_FLAG_NONROT ;
 int UINT_MAX ;
 TYPE_2__* alloc_disk (int ) ;
 TYPE_8__* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (TYPE_8__*) ;
 int blk_queue_flag_set (int ,TYPE_8__*) ;
 int blk_queue_logical_block_size (TYPE_8__*,int) ;
 int blk_queue_make_request (TYPE_8__*,int ) ;
 int blk_queue_max_hw_sectors (TYPE_8__*,int ) ;
 int btt_fops ;
 int btt_make_request ;
 scalar_t__ btt_meta_size (struct btt*) ;
 int del_gendisk (TYPE_2__*) ;
 int device_add_disk (int *,TYPE_2__*,int *) ;
 int nd_integrity_init (TYPE_2__*,scalar_t__) ;
 int nvdimm_namespace_disk_name (struct nd_namespace_common*,int ) ;
 int put_disk (TYPE_2__*) ;
 int revalidate_disk (TYPE_2__*) ;
 int set_capacity (TYPE_2__*,int) ;

__attribute__((used)) static int btt_blk_init(struct btt *btt)
{
 struct nd_btt *nd_btt = btt->nd_btt;
 struct nd_namespace_common *ndns = nd_btt->ndns;


 btt->btt_queue = blk_alloc_queue(GFP_KERNEL);
 if (!btt->btt_queue)
  return -ENOMEM;

 btt->btt_disk = alloc_disk(0);
 if (!btt->btt_disk) {
  blk_cleanup_queue(btt->btt_queue);
  return -ENOMEM;
 }

 nvdimm_namespace_disk_name(ndns, btt->btt_disk->disk_name);
 btt->btt_disk->first_minor = 0;
 btt->btt_disk->fops = &btt_fops;
 btt->btt_disk->private_data = btt;
 btt->btt_disk->queue = btt->btt_queue;
 btt->btt_disk->flags = GENHD_FL_EXT_DEVT;
 btt->btt_disk->queue->backing_dev_info->capabilities |=
   BDI_CAP_SYNCHRONOUS_IO;

 blk_queue_make_request(btt->btt_queue, btt_make_request);
 blk_queue_logical_block_size(btt->btt_queue, btt->sector_size);
 blk_queue_max_hw_sectors(btt->btt_queue, UINT_MAX);
 blk_queue_flag_set(QUEUE_FLAG_NONROT, btt->btt_queue);
 btt->btt_queue->queuedata = btt;

 if (btt_meta_size(btt)) {
  int rc = nd_integrity_init(btt->btt_disk, btt_meta_size(btt));

  if (rc) {
   del_gendisk(btt->btt_disk);
   put_disk(btt->btt_disk);
   blk_cleanup_queue(btt->btt_queue);
   return rc;
  }
 }
 set_capacity(btt->btt_disk, btt->nlba * btt->sector_size >> 9);
 device_add_disk(&btt->nd_btt->dev, btt->btt_disk, ((void*)0));
 btt->nd_btt->size = btt->nlba * (u64)btt->sector_size;
 revalidate_disk(btt->btt_disk);

 return 0;
}
