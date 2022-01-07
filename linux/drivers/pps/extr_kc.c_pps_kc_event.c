
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_event_time {int ts_raw; int ts_real; } ;
struct pps_device {int dummy; } ;


 int hardpps (int *,int *) ;
 struct pps_device* pps_kc_hardpps_dev ;
 int pps_kc_hardpps_lock ;
 int pps_kc_hardpps_mode ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pps_kc_event(struct pps_device *pps, struct pps_event_time *ts,
  int event)
{
 unsigned long flags;


 spin_lock_irqsave(&pps_kc_hardpps_lock, flags);
 if (pps == pps_kc_hardpps_dev && event & pps_kc_hardpps_mode)
  hardpps(&ts->ts_real, &ts->ts_raw);
 spin_unlock_irqrestore(&pps_kc_hardpps_lock, flags);
}
