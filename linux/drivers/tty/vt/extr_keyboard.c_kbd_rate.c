
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_repeat {int dummy; } ;


 int input_handler_for_each_handle (int *,struct kbd_repeat*,int ) ;
 int kbd_handler ;
 int kbd_rate_helper ;

int kbd_rate(struct kbd_repeat *rpt)
{
 struct kbd_repeat data[2] = { *rpt };

 input_handler_for_each_handle(&kbd_handler, data, kbd_rate_helper);
 *rpt = data[1];

 return 0;
}
