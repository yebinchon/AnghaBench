
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_rtc {int dummy; } ;


 int FTM_CNT ;
 int rtc_writel (struct ftm_rtc*,int ,int) ;

__attribute__((used)) static inline void ftm_reset_counter(struct ftm_rtc *rtc)
{





 rtc_writel(rtc, FTM_CNT, 0x00);
}
