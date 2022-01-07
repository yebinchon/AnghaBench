
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct rsi_hw {int blcmd_timer_expired; TYPE_1__ bl_cmd_timer; } ;


 int add_timer (TYPE_1__*) ;
 int bl_cmd_timeout ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int bl_start_cmd_timer(struct rsi_hw *adapter, u32 timeout)
{
 timer_setup(&adapter->bl_cmd_timer, bl_cmd_timeout, 0);
 adapter->bl_cmd_timer.expires = (msecs_to_jiffies(timeout) + jiffies);

 adapter->blcmd_timer_expired = 0;
 add_timer(&adapter->bl_cmd_timer);

 return 0;
}
