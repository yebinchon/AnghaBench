
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int bio_list; scalar_t__ generic_bio_cnt; scalar_t__ bio_list_bytes; } ;


 int bio_list_init (int *) ;
 int bio_list_merge (int *,int *) ;

__attribute__((used)) static void merge_rbio(struct btrfs_raid_bio *dest,
         struct btrfs_raid_bio *victim)
{
 bio_list_merge(&dest->bio_list, &victim->bio_list);
 dest->bio_list_bytes += victim->bio_list_bytes;
 dest->generic_bio_cnt += victim->generic_bio_cnt;
 bio_list_init(&victim->bio_list);
}
