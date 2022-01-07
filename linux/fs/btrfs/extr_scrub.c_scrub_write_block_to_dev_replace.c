
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scrub_block {int page_count; scalar_t__ sparity; TYPE_1__* sctx; } ;
struct TYPE_4__ {int num_write_errors; } ;
struct btrfs_fs_info {TYPE_2__ dev_replace; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 int atomic64_inc (int *) ;
 int scrub_write_page_to_dev_replace (struct scrub_block*,int) ;

__attribute__((used)) static void scrub_write_block_to_dev_replace(struct scrub_block *sblock)
{
 struct btrfs_fs_info *fs_info = sblock->sctx->fs_info;
 int page_num;





 if (sblock->sparity)
  return;

 for (page_num = 0; page_num < sblock->page_count; page_num++) {
  int ret;

  ret = scrub_write_page_to_dev_replace(sblock, page_num);
  if (ret)
   atomic64_inc(&fs_info->dev_replace.num_write_errors);
 }
}
