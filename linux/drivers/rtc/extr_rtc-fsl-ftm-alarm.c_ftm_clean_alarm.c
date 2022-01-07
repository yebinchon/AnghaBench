
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_rtc {int dummy; } ;


 int FTM_CNTIN ;
 int FTM_MOD ;
 int ftm_counter_disable (struct ftm_rtc*) ;
 int ftm_reset_counter (struct ftm_rtc*) ;
 int rtc_writel (struct ftm_rtc*,int ,unsigned int) ;

__attribute__((used)) static void ftm_clean_alarm(struct ftm_rtc *rtc)
{
 ftm_counter_disable(rtc);

 rtc_writel(rtc, FTM_CNTIN, 0x00);
 rtc_writel(rtc, FTM_MOD, ~0U);

 ftm_reset_counter(rtc);
}
