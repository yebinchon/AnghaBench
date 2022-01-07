
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {int timer; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void dasd_block_set_timer(struct dasd_block *block, int expires)
{
 if (expires == 0)
  del_timer(&block->timer);
 else
  mod_timer(&block->timer, jiffies + expires);
}
