
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_block {int work; scalar_t__ no_io_error_seen; TYPE_1__* sctx; } ;
struct btrfs_fs_info {int scrub_workers; } ;
struct bio {scalar_t__ bi_status; struct scrub_block* bi_private; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int bio_put (struct bio*) ;
 int btrfs_queue_work (int ,int *) ;

__attribute__((used)) static void scrub_missing_raid56_end_io(struct bio *bio)
{
 struct scrub_block *sblock = bio->bi_private;
 struct btrfs_fs_info *fs_info = sblock->sctx->fs_info;

 if (bio->bi_status)
  sblock->no_io_error_seen = 0;

 bio_put(bio);

 btrfs_queue_work(fs_info->scrub_workers, &sblock->work);
}
