
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {int unreserve_pending; int qh_list_entry; int unreserve_timer; } ;
struct dwc2_hsotg {int lock; } ;


 scalar_t__ DWC2_UNRESERVE_DELAY ;
 int WARN_ON (int) ;
 int assert_spin_locked (int *) ;
 scalar_t__ jiffies ;
 int list_del_init (int *) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void dwc2_deschedule_periodic(struct dwc2_hsotg *hsotg,
         struct dwc2_qh *qh)
{
 bool did_modify;

 assert_spin_locked(&hsotg->lock);
 did_modify = mod_timer(&qh->unreserve_timer,
          jiffies + DWC2_UNRESERVE_DELAY + 1);
 WARN_ON(did_modify);
 qh->unreserve_pending = 1;

 list_del_init(&qh->qh_list_entry);
}
