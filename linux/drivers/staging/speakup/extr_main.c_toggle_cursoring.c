
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 scalar_t__ CT_Max ;
 scalar_t__ MSG_CURSOR_MSGS_START ;
 scalar_t__ cursor_track ;
 scalar_t__ prev_cursor_track ;
 scalar_t__ read_all_mode ;
 int spk_msg_get (scalar_t__) ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void toggle_cursoring(struct vc_data *vc)
{
 if (cursor_track == read_all_mode)
  cursor_track = prev_cursor_track;
 if (++cursor_track >= CT_Max)
  cursor_track = 0;
 synth_printf("%s\n", spk_msg_get(MSG_CURSOR_MSGS_START + cursor_track));
}
