
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hfa384x {int commsqual_bh; } ;


 int commsqual_timer ;
 struct hfa384x* from_timer (int ,struct timer_list*,int ) ;
 struct hfa384x* hw ;
 int schedule_work (int *) ;

void prism2sta_commsqual_timer(struct timer_list *t)
{
 struct hfa384x *hw = from_timer(hw, t, commsqual_timer);

 schedule_work(&hw->commsqual_bh);
}
