
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_raid_bio {int faila; int generic_bio_cnt; int bio_list; int operation; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_bio {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int ASSERT (int) ;
 int BTRFS_RBIO_REBUILD_MISSING ;
 int BUG () ;
 scalar_t__ IS_ERR (struct btrfs_raid_bio*) ;
 struct btrfs_raid_bio* alloc_rbio (struct btrfs_fs_info*,struct btrfs_bio*,int ) ;
 int bio_list_add (int *,struct bio*) ;
 int find_logical_bio_stripe (struct btrfs_raid_bio*,struct bio*) ;
 int kfree (struct btrfs_raid_bio*) ;

struct btrfs_raid_bio *
raid56_alloc_missing_rbio(struct btrfs_fs_info *fs_info, struct bio *bio,
     struct btrfs_bio *bbio, u64 length)
{
 struct btrfs_raid_bio *rbio;

 rbio = alloc_rbio(fs_info, bbio, length);
 if (IS_ERR(rbio))
  return ((void*)0);

 rbio->operation = BTRFS_RBIO_REBUILD_MISSING;
 bio_list_add(&rbio->bio_list, bio);




 ASSERT(!bio->bi_iter.bi_size);

 rbio->faila = find_logical_bio_stripe(rbio, bio);
 if (rbio->faila == -1) {
  BUG();
  kfree(rbio);
  return ((void*)0);
 }





 rbio->generic_bio_cnt = 1;

 return rbio;
}
