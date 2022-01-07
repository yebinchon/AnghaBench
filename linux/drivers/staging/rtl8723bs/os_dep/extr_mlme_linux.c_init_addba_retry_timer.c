
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int addba_retry_timer; } ;
struct adapter {int dummy; } ;


 int addba_timer_hdl ;
 int timer_setup (int *,int ,int ) ;

void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta)
{
 timer_setup(&psta->addba_retry_timer, addba_timer_hdl, 0);
}
