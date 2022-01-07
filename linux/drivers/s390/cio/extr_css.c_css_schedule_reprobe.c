
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int css_schedule_eval_all_unreg (int) ;

void css_schedule_reprobe(void)
{

 css_schedule_eval_all_unreg(1 * HZ);
}
