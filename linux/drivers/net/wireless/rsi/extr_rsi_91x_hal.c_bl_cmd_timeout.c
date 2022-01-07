
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rsi_hw {int blcmd_timer_expired; int bl_cmd_timer; } ;


 struct rsi_hw* adapter ;
 int bl_cmd_timer ;
 int del_timer (int *) ;
 struct rsi_hw* from_timer (int ,struct timer_list*,int ) ;

__attribute__((used)) static void bl_cmd_timeout(struct timer_list *t)
{
 struct rsi_hw *adapter = from_timer(adapter, t, bl_cmd_timer);

 adapter->blcmd_timer_expired = 1;
 del_timer(&adapter->bl_cmd_timer);
}
