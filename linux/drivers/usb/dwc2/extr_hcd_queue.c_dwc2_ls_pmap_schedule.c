
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
 int EINVAL ;
 unsigned long* dwc2_get_ls_map (struct dwc2_hsotg*,struct dwc2_qh*) ;
 int pmap_schedule (unsigned long*,int ,int ,int,int ,int,int) ;

__attribute__((used)) static int dwc2_ls_pmap_schedule(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
     int search_slice)
{
 int slices = DIV_ROUND_UP(qh->device_us, DWC2_US_PER_SLICE);
 unsigned long *map = dwc2_get_ls_map(hsotg, qh);
 int slice;

 if (!map)
  return -EINVAL;
 slice = pmap_schedule(map, DWC2_LS_PERIODIC_SLICES_PER_FRAME,
         DWC2_LS_SCHEDULE_FRAMES, slices,
         qh->device_interval, search_slice, 0);

 if (slice < 0)
  return slice;

 qh->ls_start_schedule_slice = slice;
 return 0;
}
