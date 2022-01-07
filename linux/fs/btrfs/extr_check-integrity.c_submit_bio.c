
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __btrfsic_submit_bio (struct bio*) ;
 int submit_bio (struct bio*) ;

void btrfsic_submit_bio(struct bio *bio)
{
 __btrfsic_submit_bio(bio);
 submit_bio(bio);
}
