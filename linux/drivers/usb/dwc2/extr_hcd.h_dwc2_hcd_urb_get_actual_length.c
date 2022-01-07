
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hcd_urb {int actual_length; } ;



__attribute__((used)) static inline u32 dwc2_hcd_urb_get_actual_length(
  struct dwc2_hcd_urb *dwc2_urb)
{
 return dwc2_urb->actual_length;
}
