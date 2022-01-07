
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_cb {int started; scalar_t__ timer_pops; int timer; } ;
struct scsi_info {struct timer_cb rsp_q_timer; } ;


 int hrtimer_cancel (int *) ;

__attribute__((used)) static void ibmvscsis_freetimer(struct scsi_info *vscsi)
{
 struct timer_cb *p_timer;

 p_timer = &vscsi->rsp_q_timer;

 (void)hrtimer_cancel(&p_timer->timer);

 p_timer->started = 0;
 p_timer->timer_pops = 0;
}
