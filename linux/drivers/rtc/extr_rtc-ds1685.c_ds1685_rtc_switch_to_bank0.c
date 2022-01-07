
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* write ) (struct ds1685_priv*,int ,int) ;} ;


 int RTC_CTRL_A ;
 int RTC_CTRL_A_DV0 ;
 int stub1 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ) ;

__attribute__((used)) static inline void
ds1685_rtc_switch_to_bank0(struct ds1685_priv *rtc)
{
 rtc->write(rtc, RTC_CTRL_A,
     (rtc->read(rtc, RTC_CTRL_A) & ~(RTC_CTRL_A_DV0)));
}
