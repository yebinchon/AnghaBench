
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int part0; int queue; } ;
struct bio {struct gendisk* bi_disk; } ;


 int bio_op (struct bio*) ;
 int generic_end_io_acct (int ,int ,int *,unsigned long) ;

__attribute__((used)) static inline void nd_iostat_end(struct bio *bio, unsigned long start)
{
 struct gendisk *disk = bio->bi_disk;

 generic_end_io_acct(disk->queue, bio_op(bio), &disk->part0, start);
}
