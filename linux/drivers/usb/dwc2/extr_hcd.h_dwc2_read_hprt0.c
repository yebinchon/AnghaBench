
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int HPRT0 ;
 int HPRT0_CONNDET ;
 int HPRT0_ENA ;
 int HPRT0_ENACHG ;
 int HPRT0_OVRCURRCHG ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static inline u32 dwc2_read_hprt0(struct dwc2_hsotg *hsotg)
{
 u32 hprt0 = dwc2_readl(hsotg, HPRT0);

 hprt0 &= ~(HPRT0_ENA | HPRT0_CONNDET | HPRT0_ENACHG | HPRT0_OVRCURRCHG);
 return hprt0;
}
