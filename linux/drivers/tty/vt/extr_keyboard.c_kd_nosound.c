
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int input_handler_for_each_handle (int *,unsigned int*,int ) ;
 int kbd_handler ;
 int kd_sound_helper ;

__attribute__((used)) static void kd_nosound(struct timer_list *unused)
{
 static unsigned int zero;

 input_handler_for_each_handle(&kbd_handler, &zero, kd_sound_helper);
}
