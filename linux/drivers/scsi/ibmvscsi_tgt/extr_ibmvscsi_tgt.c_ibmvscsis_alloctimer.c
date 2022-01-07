
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct timer_cb {int started; scalar_t__ timer_pops; TYPE_1__ timer; } ;
struct scsi_info {struct timer_cb rsp_q_timer; } ;


 long ADAPT_SUCCESS ;
 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int ibmvscsis_service_wait_q ;

__attribute__((used)) static long ibmvscsis_alloctimer(struct scsi_info *vscsi)
{
 struct timer_cb *p_timer;

 p_timer = &vscsi->rsp_q_timer;
 hrtimer_init(&p_timer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);

 p_timer->timer.function = ibmvscsis_service_wait_q;
 p_timer->started = 0;
 p_timer->timer_pops = 0;

 return ADAPT_SUCCESS;
}
