
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_reorder_ctrl {int reordering_ctrl_timer; } ;


 int rtw_reordering_ctrl_timeout_handler ;
 int timer_setup (int *,int ,int ) ;

void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
{
 timer_setup(&preorder_ctrl->reordering_ctrl_timer,
      rtw_reordering_ctrl_timeout_handler, 0);
}
