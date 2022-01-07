
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
typedef void* u32 ;
struct btrfsic_state {struct btrfs_fs_info* fs_info; } ;
struct btrfsic_block_data_ctx {int * dev; int * mem_to_free; int * pagev; int * datav; void* len; void* start; int dev_bytenr; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_device {TYPE_1__* bdev; int name; int dev_state; } ;
struct btrfs_bio {TYPE_2__* stripes; } ;
struct TYPE_4__ {int physical; struct btrfs_device* dev; } ;
struct TYPE_3__ {int bd_dev; } ;


 int BTRFS_DEV_STATE_MISSING ;
 int BTRFS_MAP_READ ;
 int ENXIO ;
 int btrfs_map_block (struct btrfs_fs_info*,int ,void*,void**,struct btrfs_bio**,int) ;
 int * btrfsic_dev_state_lookup (int ) ;
 int kfree (struct btrfs_bio*) ;
 int pr_info (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int btrfsic_map_block(struct btrfsic_state *state, u64 bytenr, u32 len,
        struct btrfsic_block_data_ctx *block_ctx_out,
        int mirror_num)
{
 struct btrfs_fs_info *fs_info = state->fs_info;
 int ret;
 u64 length;
 struct btrfs_bio *multi = ((void*)0);
 struct btrfs_device *device;

 length = len;
 ret = btrfs_map_block(fs_info, BTRFS_MAP_READ,
         bytenr, &length, &multi, mirror_num);

 if (ret) {
  block_ctx_out->start = 0;
  block_ctx_out->dev_bytenr = 0;
  block_ctx_out->len = 0;
  block_ctx_out->dev = ((void*)0);
  block_ctx_out->datav = ((void*)0);
  block_ctx_out->pagev = ((void*)0);
  block_ctx_out->mem_to_free = ((void*)0);

  return ret;
 }

 device = multi->stripes[0].dev;
 if (test_bit(BTRFS_DEV_STATE_MISSING, &device->dev_state) ||
     !device->bdev || !device->name)
  block_ctx_out->dev = ((void*)0);
 else
  block_ctx_out->dev = btrfsic_dev_state_lookup(
       device->bdev->bd_dev);
 block_ctx_out->dev_bytenr = multi->stripes[0].physical;
 block_ctx_out->start = bytenr;
 block_ctx_out->len = len;
 block_ctx_out->datav = ((void*)0);
 block_ctx_out->pagev = ((void*)0);
 block_ctx_out->mem_to_free = ((void*)0);

 kfree(multi);
 if (((void*)0) == block_ctx_out->dev) {
  ret = -ENXIO;
  pr_info("btrfsic: error, cannot lookup dev (#1)!\n");
 }

 return ret;
}
