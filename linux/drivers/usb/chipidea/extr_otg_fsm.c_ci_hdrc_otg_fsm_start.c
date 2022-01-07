
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int ci_otg_queue_work (struct ci_hdrc*) ;

void ci_hdrc_otg_fsm_start(struct ci_hdrc *ci)
{
 ci_otg_queue_work(ci);
}
