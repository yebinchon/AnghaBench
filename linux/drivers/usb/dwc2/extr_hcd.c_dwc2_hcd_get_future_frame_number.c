
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int HFIR ;
 int HFIR_FRINT_MASK ;
 int HFIR_FRINT_SHIFT ;
 int HFNUM ;
 int HFNUM_FRNUM_MASK ;
 int HFNUM_FRNUM_SHIFT ;
 int HFNUM_FRREM_MASK ;
 int HFNUM_FRREM_SHIFT ;
 int HPRT0 ;
 int HPRT0_SPD_MASK ;
 int dwc2_frame_num_inc (unsigned int,unsigned int) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

int dwc2_hcd_get_future_frame_number(struct dwc2_hsotg *hsotg, int us)
{
 u32 hprt = dwc2_readl(hsotg, HPRT0);
 u32 hfir = dwc2_readl(hsotg, HFIR);
 u32 hfnum = dwc2_readl(hsotg, HFNUM);
 unsigned int us_per_frame;
 unsigned int frame_number;
 unsigned int remaining;
 unsigned int interval;
 unsigned int phy_clks;


 us_per_frame = (hprt & HPRT0_SPD_MASK) ? 1000 : 125;


 frame_number = (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
 remaining = (hfnum & HFNUM_FRREM_MASK) >> HFNUM_FRREM_SHIFT;
 interval = (hfir & HFIR_FRINT_MASK) >> HFIR_FRINT_SHIFT;





 phy_clks = (interval - remaining) +
     DIV_ROUND_UP(interval * us, us_per_frame);

 return dwc2_frame_num_inc(frame_number, phy_clks / interval);
}
