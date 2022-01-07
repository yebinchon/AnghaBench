
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int periodic_sched_queued; int periodic_sched_assigned; int periodic_sched_ready; int periodic_sched_inactive; int non_periodic_sched_active; int non_periodic_sched_waiting; int non_periodic_sched_inactive; } ;


 int dwc2_kill_urbs_in_qh_list (struct dwc2_hsotg*,int *) ;

__attribute__((used)) static void dwc2_kill_all_urbs(struct dwc2_hsotg *hsotg)
{
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_inactive);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_waiting);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->non_periodic_sched_active);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_inactive);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_ready);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_assigned);
 dwc2_kill_urbs_in_qh_list(hsotg, &hsotg->periodic_sched_queued);
}
