
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bio {int dummy; } ;
typedef int blk_status_t ;


 int btree_csum_one_bio (struct bio*) ;

__attribute__((used)) static blk_status_t btree_submit_bio_start(void *private_data, struct bio *bio,
          u64 bio_offset)
{




 return btree_csum_one_bio(bio);
}
