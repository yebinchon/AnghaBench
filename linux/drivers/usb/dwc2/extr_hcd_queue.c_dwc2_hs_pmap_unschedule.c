
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {int host_interval; struct dwc2_hs_transfer_time* hs_transfers; } ;
struct dwc2_hsotg {int hs_periodic_bitmap; } ;
struct dwc2_hs_transfer_time {int start_schedule_us; int duration_us; } ;


 int DWC2_HS_PERIODIC_US_PER_UFRAME ;
 int DWC2_HS_SCHEDULE_UFRAMES ;
 int pmap_unschedule (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dwc2_hs_pmap_unschedule(struct dwc2_hsotg *hsotg,
        struct dwc2_qh *qh, int index)
{
 struct dwc2_hs_transfer_time *trans_time = qh->hs_transfers + index;

 pmap_unschedule(hsotg->hs_periodic_bitmap,
   DWC2_HS_PERIODIC_US_PER_UFRAME,
   DWC2_HS_SCHEDULE_UFRAMES, trans_time->duration_us,
   qh->host_interval, trans_time->start_schedule_us);
}
