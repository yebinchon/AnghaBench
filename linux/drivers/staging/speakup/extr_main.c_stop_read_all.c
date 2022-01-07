
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int cursor_timer ;
 int cursor_track ;
 int del_timer (int *) ;
 int prev_cursor_track ;
 int spk_do_flush () ;
 int spk_shut_up ;

__attribute__((used)) static void stop_read_all(struct vc_data *vc)
{
 del_timer(&cursor_timer);
 cursor_track = prev_cursor_track;
 spk_shut_up &= 0xfe;
 spk_do_flush();
}
