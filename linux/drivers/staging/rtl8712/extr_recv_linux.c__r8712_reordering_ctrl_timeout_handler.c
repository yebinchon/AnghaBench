
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct recv_reorder_ctrl {int dummy; } ;


 struct recv_reorder_ctrl* from_timer (int ,struct timer_list*,int ) ;
 int r8712_reordering_ctrl_timeout_handler (struct recv_reorder_ctrl*) ;
 struct recv_reorder_ctrl* reorder_ctrl ;
 int reordering_ctrl_timer ;

__attribute__((used)) static void _r8712_reordering_ctrl_timeout_handler (struct timer_list *t)
{
 struct recv_reorder_ctrl *reorder_ctrl =
    from_timer(reorder_ctrl, t, reordering_ctrl_timer);

 r8712_reordering_ctrl_timeout_handler(reorder_ctrl);
}
