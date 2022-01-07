
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvumi_hba {int dm_thread; int pnp_count; } ;
struct mvumi_events_wq {int work_q; int * param; int event; struct mvumi_hba* mhba; } ;


 int APICDB1_EVENT_GETEVENT ;
 int DRBL_BUS_CHANGE ;
 int DRBL_EVENT_NOTIFY ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 struct mvumi_events_wq* kzalloc (int,int ) ;
 int mvumi_scan_events ;
 int schedule_work (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void mvumi_launch_events(struct mvumi_hba *mhba, u32 isr_status)
{
 struct mvumi_events_wq *mu_ev;

 while (isr_status & (DRBL_BUS_CHANGE | DRBL_EVENT_NOTIFY)) {
  if (isr_status & DRBL_BUS_CHANGE) {
   atomic_inc(&mhba->pnp_count);
   wake_up_process(mhba->dm_thread);
   isr_status &= ~(DRBL_BUS_CHANGE);
   continue;
  }

  mu_ev = kzalloc(sizeof(*mu_ev), GFP_ATOMIC);
  if (mu_ev) {
   INIT_WORK(&mu_ev->work_q, mvumi_scan_events);
   mu_ev->mhba = mhba;
   mu_ev->event = APICDB1_EVENT_GETEVENT;
   isr_status &= ~(DRBL_EVENT_NOTIFY);
   mu_ev->param = ((void*)0);
   schedule_work(&mu_ev->work_q);
  }
 }
}
