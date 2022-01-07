
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __btrfsic_submit_bio (struct bio*) ;
 int submit_bio_wait (struct bio*) ;

int btrfsic_submit_bio_wait(struct bio *bio)
{
 __btrfsic_submit_bio(bio);
 return submit_bio_wait(bio);
}
