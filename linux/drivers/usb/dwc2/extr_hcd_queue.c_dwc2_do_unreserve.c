
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_qh {int unreserve_pending; scalar_t__ host_us; int qh_list_entry; } ;
struct TYPE_2__ {scalar_t__ uframe_sched; } ;
struct dwc2_hsotg {int periodic_channels; TYPE_1__ params; int periodic_usecs; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int assert_spin_locked (int *) ;
 int dwc2_uframe_unschedule (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void dwc2_do_unreserve(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
 assert_spin_locked(&hsotg->lock);

 WARN_ON(!qh->unreserve_pending);


 qh->unreserve_pending = 0;

 if (WARN_ON(!list_empty(&qh->qh_list_entry)))
  list_del_init(&qh->qh_list_entry);


 hsotg->periodic_usecs -= qh->host_us;

 if (hsotg->params.uframe_sched) {
  dwc2_uframe_unschedule(hsotg, qh);
 } else {

  hsotg->periodic_channels--;
 }
}
