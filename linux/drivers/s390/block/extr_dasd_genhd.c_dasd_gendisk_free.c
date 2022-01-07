
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_block {TYPE_1__* gdp; } ;
struct TYPE_3__ {int * private_data; } ;


 int del_gendisk (TYPE_1__*) ;
 int put_disk (TYPE_1__*) ;

void dasd_gendisk_free(struct dasd_block *block)
{
 if (block->gdp) {
  del_gendisk(block->gdp);
  block->gdp->private_data = ((void*)0);
  put_disk(block->gdp);
  block->gdp = ((void*)0);
 }
}
