
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftm_rtc {int dummy; } ;


 int FTM_SC ;
 int FTM_SC_TOIE ;
 int rtc_readl (struct ftm_rtc*,int ) ;
 int rtc_writel (struct ftm_rtc*,int ,int ) ;

__attribute__((used)) static inline void ftm_irq_enable(struct ftm_rtc *rtc)
{
 u32 val;

 val = rtc_readl(rtc, FTM_SC);
 val |= FTM_SC_TOIE;
 rtc_writel(rtc, FTM_SC, val);
}
