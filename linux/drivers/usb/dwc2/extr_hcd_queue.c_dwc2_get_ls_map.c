
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc2_qh {int ttport; TYPE_2__* dwc_tt; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_4__ {unsigned long* periodic_bitmaps; TYPE_1__* usb_tt; } ;
struct TYPE_3__ {scalar_t__ multi; } ;


 int DWC2_ELEMENTS_PER_LS_BITMAP ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static unsigned long *dwc2_get_ls_map(struct dwc2_hsotg *hsotg,
          struct dwc2_qh *qh)
{
 unsigned long *map;


 if (WARN_ON(!qh->dwc_tt))
  return ((void*)0);


 map = qh->dwc_tt->periodic_bitmaps;
 if (qh->dwc_tt->usb_tt->multi)
  map += DWC2_ELEMENTS_PER_LS_BITMAP * (qh->ttport - 1);

 return map;
}
