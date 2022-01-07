
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_event_time {int dummy; } ;
struct ptp_clock_event {int type; struct pps_event_time pps_times; } ;
struct ptp_clock {int pps_source; int tsev_wq; int tsevq; } ;






 int PTP_PPS_EVENT ;
 int enqueue_external_timestamp (int *,struct ptp_clock_event*) ;
 int pps_event (int ,struct pps_event_time*,int ,int *) ;
 int pps_get_ts (struct pps_event_time*) ;
 int wake_up_interruptible (int *) ;

void ptp_clock_event(struct ptp_clock *ptp, struct ptp_clock_event *event)
{
 struct pps_event_time evt;

 switch (event->type) {

 case 131:
  break;

 case 130:
  enqueue_external_timestamp(&ptp->tsevq, event);
  wake_up_interruptible(&ptp->tsev_wq);
  break;

 case 129:
  pps_get_ts(&evt);
  pps_event(ptp->pps_source, &evt, PTP_PPS_EVENT, ((void*)0));
  break;

 case 128:
  pps_event(ptp->pps_source, &event->pps_times,
     PTP_PPS_EVENT, ((void*)0));
  break;
 }
}
