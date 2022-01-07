
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fbcon_ops {scalar_t__ cur_blink_jiffies; int cursor_timer; struct fb_info* info; } ;
struct fb_info {int queue; } ;


 int cursor_timer ;
 struct fbcon_ops* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct fbcon_ops* ops ;
 int queue_work (int ,int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void cursor_timer_handler(struct timer_list *t)
{
 struct fbcon_ops *ops = from_timer(ops, t, cursor_timer);
 struct fb_info *info = ops->info;

 queue_work(system_power_efficient_wq, &info->queue);
 mod_timer(&ops->cursor_timer, jiffies + ops->cur_blink_jiffies);
}
