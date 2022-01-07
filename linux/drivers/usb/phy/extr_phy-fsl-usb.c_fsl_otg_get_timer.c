
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_otg_timer {int dummy; } ;
typedef enum otg_fsm_timer { ____Placeholder_otg_fsm_timer } otg_fsm_timer ;
 struct fsl_otg_timer* a_wait_vrise_tmr ;

__attribute__((used)) static struct fsl_otg_timer *fsl_otg_get_timer(enum otg_fsm_timer t)
{
 struct fsl_otg_timer *timer;


 switch (t) {
 case 131:
  timer = a_wait_vrise_tmr;
  break;
 case 133:
  timer = a_wait_vrise_tmr;
  break;
 case 134:
  timer = a_wait_vrise_tmr;
  break;
 case 130:
  timer = a_wait_vrise_tmr;
  break;
 case 129:
  timer = a_wait_vrise_tmr;
  break;
 case 128:
  timer = a_wait_vrise_tmr;
  break;
 case 132:
  timer = a_wait_vrise_tmr;
  break;
 default:
  timer = ((void*)0);
 }

 return timer;
}
