
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {int blcmd_timer_expired; int bl_cmd_timer; } ;


 int del_timer (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static int bl_stop_cmd_timer(struct rsi_hw *adapter)
{
 adapter->blcmd_timer_expired = 0;
 if (timer_pending(&adapter->bl_cmd_timer))
  del_timer(&adapter->bl_cmd_timer);

 return 0;
}
