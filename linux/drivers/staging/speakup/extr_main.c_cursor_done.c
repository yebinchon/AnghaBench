
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_x; scalar_t__ vc_y; int vc_cols; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int spinlock; } ;
struct TYPE_3__ {struct vc_data* d; } ;


 scalar_t__ CT_Highlight ;
 scalar_t__ CT_Window ;
 size_t cursor_con ;
 int cursor_timer ;
 scalar_t__ cursor_track ;
 int del_timer (int *) ;
 size_t fg_console ;
 int handle_cursor_read_all (struct vc_data*,int ) ;
 int is_cursor ;
 int read_all_key ;
 scalar_t__ read_all_mode ;
 int say_char (struct vc_data*) ;
 int say_line_from_to (struct vc_data*,int ,int ,int ) ;
 scalar_t__ speak_highlight (struct vc_data*) ;
 int speakup_date (struct vc_data*) ;
 TYPE_2__ speakup_info ;
 int speakup_win_say (struct vc_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ spk_keydown ;
 TYPE_1__* vc_cons ;
 scalar_t__ win_bottom ;
 scalar_t__ win_enabled ;
 scalar_t__ win_left ;
 scalar_t__ win_right ;
 scalar_t__ win_top ;

__attribute__((used)) static void cursor_done(struct timer_list *unused)
{
 struct vc_data *vc = vc_cons[cursor_con].d;
 unsigned long flags;

 del_timer(&cursor_timer);
 spin_lock_irqsave(&speakup_info.spinlock, flags);
 if (cursor_con != fg_console) {
  is_cursor = 0;
  goto out;
 }
 speakup_date(vc);
 if (win_enabled) {
  if (vc->vc_x >= win_left && vc->vc_x <= win_right &&
      vc->vc_y >= win_top && vc->vc_y <= win_bottom) {
   spk_keydown = 0;
   is_cursor = 0;
   goto out;
  }
 }
 if (cursor_track == read_all_mode) {
  handle_cursor_read_all(vc, read_all_key);
  goto out;
 }
 if (cursor_track == CT_Highlight) {
  if (speak_highlight(vc)) {
   spk_keydown = 0;
   is_cursor = 0;
   goto out;
  }
 }
 if (cursor_track == CT_Window)
  speakup_win_say(vc);
 else if (is_cursor == 1 || is_cursor == 4)
  say_line_from_to(vc, 0, vc->vc_cols, 0);
 else
  say_char(vc);
 spk_keydown = 0;
 is_cursor = 0;
out:
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
}
