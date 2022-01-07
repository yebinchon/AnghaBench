
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {int timer; } ;


 int del_timer (int *) ;

void dasd_block_clear_timer(struct dasd_block *block)
{
 del_timer(&block->timer);
}
