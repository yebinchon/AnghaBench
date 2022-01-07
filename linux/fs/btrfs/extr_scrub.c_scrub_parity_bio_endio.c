
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_parity {int work; int nsectors; int dbitmap; int ebitmap; TYPE_1__* sctx; } ;
struct btrfs_fs_info {int scrub_parity_workers; } ;
struct bio {scalar_t__ bi_status; scalar_t__ bi_private; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int bio_put (struct bio*) ;
 int bitmap_or (int ,int ,int ,int ) ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 int btrfs_scrubparity_helper ;
 int scrub_parity_bio_endio_worker ;

__attribute__((used)) static void scrub_parity_bio_endio(struct bio *bio)
{
 struct scrub_parity *sparity = (struct scrub_parity *)bio->bi_private;
 struct btrfs_fs_info *fs_info = sparity->sctx->fs_info;

 if (bio->bi_status)
  bitmap_or(sparity->ebitmap, sparity->ebitmap, sparity->dbitmap,
     sparity->nsectors);

 bio_put(bio);

 btrfs_init_work(&sparity->work, btrfs_scrubparity_helper,
   scrub_parity_bio_endio_worker, ((void*)0), ((void*)0));
 btrfs_queue_work(fs_info->scrub_parity_workers, &sparity->work);
}
