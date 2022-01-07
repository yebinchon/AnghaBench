
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_rtc {int dummy; } ;


 int FTM_SC ;
 int FTM_SC_TOF ;
 int rtc_readl (struct ftm_rtc*,int ) ;
 int rtc_writel (struct ftm_rtc*,int ,int) ;

__attribute__((used)) static inline void ftm_irq_acknowledge(struct ftm_rtc *rtc)
{
 unsigned int timeout = 100;
 while ((FTM_SC_TOF & rtc_readl(rtc, FTM_SC)) && timeout--)
  rtc_writel(rtc, FTM_SC, rtc_readl(rtc, FTM_SC) & (~FTM_SC_TOF));
}
