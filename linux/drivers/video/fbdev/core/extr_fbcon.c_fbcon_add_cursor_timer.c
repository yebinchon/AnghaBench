
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fbcon_ops {int flags; scalar_t__ cur_blink_jiffies; int cursor_timer; } ;
struct TYPE_2__ {scalar_t__ func; } ;
struct fb_info {TYPE_1__ queue; struct fbcon_ops* fbcon_par; } ;


 int FBCON_FLAGS_CURSOR_TIMER ;
 int INIT_WORK (TYPE_1__*,scalar_t__) ;
 int cursor_timer_handler ;
 scalar_t__ fb_flashcursor ;
 int fbcon_cursor_noblink ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void fbcon_add_cursor_timer(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;

 if ((!info->queue.func || info->queue.func == fb_flashcursor) &&
     !(ops->flags & FBCON_FLAGS_CURSOR_TIMER) &&
     !fbcon_cursor_noblink) {
  if (!info->queue.func)
   INIT_WORK(&info->queue, fb_flashcursor);

  timer_setup(&ops->cursor_timer, cursor_timer_handler, 0);
  mod_timer(&ops->cursor_timer, jiffies + ops->cur_blink_jiffies);
  ops->flags |= FBCON_FLAGS_CURSOR_TIMER;
 }
}
