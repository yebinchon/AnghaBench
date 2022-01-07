
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {int dummy; } ;


 int kfree (struct dasd_block*) ;

void dasd_free_block(struct dasd_block *block)
{
 kfree(block);
}
