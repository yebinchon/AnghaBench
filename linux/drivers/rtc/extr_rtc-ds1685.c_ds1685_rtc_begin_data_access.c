
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* write ) (struct ds1685_priv*,int ,int) ;} ;


 int RTC_CTRL_4A_INCR ;
 int RTC_CTRL_B ;
 int RTC_CTRL_B_SET ;
 int RTC_EXT_CTRL_4A ;
 int cpu_relax () ;
 int ds1685_rtc_switch_to_bank1 (struct ds1685_priv*) ;
 int stub1 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ) ;

__attribute__((used)) static inline void
ds1685_rtc_begin_data_access(struct ds1685_priv *rtc)
{

 rtc->write(rtc, RTC_CTRL_B,
     (rtc->read(rtc, RTC_CTRL_B) | RTC_CTRL_B_SET));


 while (rtc->read(rtc, RTC_EXT_CTRL_4A) & RTC_CTRL_4A_INCR)
  cpu_relax();


 ds1685_rtc_switch_to_bank1(rtc);
}
