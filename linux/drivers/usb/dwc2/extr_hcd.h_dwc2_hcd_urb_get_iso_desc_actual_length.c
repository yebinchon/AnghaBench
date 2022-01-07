
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dwc2_hcd_urb {TYPE_1__* iso_descs; } ;
struct TYPE_2__ {int actual_length; } ;



__attribute__((used)) static inline u32 dwc2_hcd_urb_get_iso_desc_actual_length(
  struct dwc2_hcd_urb *dwc2_urb, int desc_num)
{
 return dwc2_urb->iso_descs[desc_num].actual_length;
}
