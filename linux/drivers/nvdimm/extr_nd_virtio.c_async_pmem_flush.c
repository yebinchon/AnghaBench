
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_region {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int REQ_PREFLUSH ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_copy_dev (struct bio*,struct bio*) ;
 int submit_bio (struct bio*) ;
 scalar_t__ virtio_pmem_flush (struct nd_region*) ;

int async_pmem_flush(struct nd_region *nd_region, struct bio *bio)
{




 if (bio && bio->bi_iter.bi_sector != -1) {
  struct bio *child = bio_alloc(GFP_ATOMIC, 0);

  if (!child)
   return -ENOMEM;
  bio_copy_dev(child, bio);
  child->bi_opf = REQ_PREFLUSH;
  child->bi_iter.bi_sector = -1;
  bio_chain(child, bio);
  submit_bio(child);
  return 0;
 }
 if (virtio_pmem_flush(nd_region))
  return -EIO;

 return 0;
}
