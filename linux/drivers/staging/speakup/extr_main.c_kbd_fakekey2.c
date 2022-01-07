
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int cursor_timer ;
 int del_timer (int *) ;
 int speakup_fake_down_arrow () ;
 int start_read_all_timer (struct vc_data*,int) ;

__attribute__((used)) static void kbd_fakekey2(struct vc_data *vc, int command)
{
 del_timer(&cursor_timer);
 speakup_fake_down_arrow();
 start_read_all_timer(vc, command);
}
