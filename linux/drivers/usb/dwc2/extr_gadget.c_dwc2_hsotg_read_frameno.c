
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int DSTS ;
 int DSTS_SOFFN_MASK ;
 int DSTS_SOFFN_SHIFT ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static u32 dwc2_hsotg_read_frameno(struct dwc2_hsotg *hsotg)
{
 u32 dsts;

 dsts = dwc2_readl(hsotg, DSTS);
 dsts &= DSTS_SOFFN_MASK;
 dsts >>= DSTS_SOFFN_SHIFT;

 return dsts;
}
