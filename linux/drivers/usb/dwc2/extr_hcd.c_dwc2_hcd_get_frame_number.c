
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dev; } ;


 int HFNUM ;
 int HFNUM_FRNUM_MASK ;
 int HFNUM_FRNUM_SHIFT ;
 int dev_vdbg (int ,char*,int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
{
 u32 hfnum = dwc2_readl(hsotg, HFNUM);





 return (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
}
