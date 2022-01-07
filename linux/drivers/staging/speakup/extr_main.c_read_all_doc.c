
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_num; } ;


 int RA_DOWN_ARROW ;
 int RA_TIMER ;
 int cursor_timer ;
 scalar_t__ cursor_track ;
 int del_timer (int *) ;
 scalar_t__ fg_console ;
 int get_sentence_buf (struct vc_data*,int ) ;
 int in_keyboard_notifier ;
 scalar_t__ prev_cursor_track ;
 scalar_t__ read_all_mode ;
 int say_sentence_num (int ,int ) ;
 int speakup_fake_down_arrow () ;
 int spk_reset_index_count (int ) ;
 scalar_t__ spk_shut_up ;
 int start_read_all_timer (struct vc_data*,int ) ;
 int synth ;
 int synth_insert_next_index (int ) ;
 int synth_supports_indexing () ;

__attribute__((used)) static void read_all_doc(struct vc_data *vc)
{
 if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
  return;
 if (!synth_supports_indexing())
  return;
 if (cursor_track != read_all_mode)
  prev_cursor_track = cursor_track;
 cursor_track = read_all_mode;
 spk_reset_index_count(0);
 if (get_sentence_buf(vc, 0) == -1) {
  del_timer(&cursor_timer);
  if (!in_keyboard_notifier)
   speakup_fake_down_arrow();
  start_read_all_timer(vc, RA_DOWN_ARROW);
 } else {
  say_sentence_num(0, 0);
  synth_insert_next_index(0);
  start_read_all_timer(vc, RA_TIMER);
 }
}
