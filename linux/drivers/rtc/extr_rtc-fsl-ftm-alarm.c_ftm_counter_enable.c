
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftm_rtc {int dummy; } ;


 int FTM_SC ;
 int FTM_SC_CLK (int ) ;
 int FTM_SC_CLKS_FIXED_FREQ ;
 int FTM_SC_CLK_MASK ;
 int FTM_SC_PS_MASK ;
 int rtc_readl (struct ftm_rtc*,int ) ;
 int rtc_writel (struct ftm_rtc*,int ,int) ;

__attribute__((used)) static inline void ftm_counter_enable(struct ftm_rtc *rtc)
{
 u32 val;


 val = rtc_readl(rtc, FTM_SC);
 val &= ~(FTM_SC_PS_MASK | FTM_SC_CLK_MASK);
 val |= (FTM_SC_PS_MASK | FTM_SC_CLK(FTM_SC_CLKS_FIXED_FREQ));
 rtc_writel(rtc, FTM_SC, val);
}
