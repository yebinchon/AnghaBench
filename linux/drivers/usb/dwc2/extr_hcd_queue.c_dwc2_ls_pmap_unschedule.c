
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_qh {int ls_start_schedule_slice; int device_interval; int device_us; } ;
struct dwc2_hsotg {int dummy; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int DWC2_LS_PERIODIC_SLICES_PER_FRAME ;
 int DWC2_LS_SCHEDULE_FRAMES ;
 int DWC2_US_PER_SLICE ;
 unsigned long* dwc2_get_ls_map (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int pmap_unschedule (unsigned long*,int ,int ,int,int ,int ) ;

__attribute__((used)) static void dwc2_ls_pmap_unschedule(struct dwc2_hsotg *hsotg,
        struct dwc2_qh *qh)
{
 int slices = DIV_ROUND_UP(qh->device_us, DWC2_US_PER_SLICE);
 unsigned long *map = dwc2_get_ls_map(hsotg, qh);


 if (!map)
  return;

 pmap_unschedule(map, DWC2_LS_PERIODIC_SLICES_PER_FRAME,
   DWC2_LS_SCHEDULE_FRAMES, slices, qh->device_interval,
   qh->ls_start_schedule_slice);
}
