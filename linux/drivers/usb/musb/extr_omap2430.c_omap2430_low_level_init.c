
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct musb {int mregs; } ;


 int ENABLEFORCE ;
 int OTG_FORCESTDBY ;
 int musb_readl (int ,int ) ;
 int musb_writel (int ,int ,int ) ;

__attribute__((used)) static inline void omap2430_low_level_init(struct musb *musb)
{
 u32 l;

 l = musb_readl(musb->mregs, OTG_FORCESTDBY);
 l &= ~ENABLEFORCE;
 musb_writel(musb->mregs, OTG_FORCESTDBY, l);
}
