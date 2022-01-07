
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int bio_list; scalar_t__ generic_bio_cnt; int fs_info; } ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int __free_raid_bio (struct btrfs_raid_bio*) ;
 struct bio* bio_list_get (int *) ;
 int btrfs_bio_counter_sub (int ,scalar_t__) ;
 int rbio_endio_bio_list (struct bio*,int ) ;
 int unlock_stripe (struct btrfs_raid_bio*) ;

__attribute__((used)) static void rbio_orig_end_io(struct btrfs_raid_bio *rbio, blk_status_t err)
{
 struct bio *cur = bio_list_get(&rbio->bio_list);
 struct bio *extra;

 if (rbio->generic_bio_cnt)
  btrfs_bio_counter_sub(rbio->fs_info, rbio->generic_bio_cnt);
 unlock_stripe(rbio);
 extra = bio_list_get(&rbio->bio_list);
 __free_raid_bio(rbio);

 rbio_endio_bio_list(cur, err);
 if (extra)
  rbio_endio_bio_list(extra, err);
}
