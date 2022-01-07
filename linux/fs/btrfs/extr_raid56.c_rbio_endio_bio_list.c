
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_status; struct bio* bi_next; } ;
typedef int blk_status_t ;


 int bio_endio (struct bio*) ;

__attribute__((used)) static void rbio_endio_bio_list(struct bio *cur, blk_status_t err)
{
 struct bio *next;

 while (cur) {
  next = cur->bi_next;
  cur->bi_next = ((void*)0);
  cur->bi_status = err;
  bio_endio(cur);
  cur = next;
 }
}
