
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;} ;


 int RTC_BANK1_SSN_BYTE_1 ;
 int RTC_BANK1_SSN_BYTE_2 ;
 int RTC_BANK1_SSN_BYTE_3 ;
 int RTC_BANK1_SSN_BYTE_4 ;
 int RTC_BANK1_SSN_BYTE_5 ;
 int RTC_BANK1_SSN_BYTE_6 ;
 int RTC_BANK1_SSN_CRC ;
 int RTC_BANK1_SSN_MODEL ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ) ;
 int stub6 (struct ds1685_priv*,int ) ;
 int stub7 (struct ds1685_priv*,int ) ;
 int stub8 (struct ds1685_priv*,int ) ;

__attribute__((used)) static inline void
ds1685_rtc_get_ssn(struct ds1685_priv *rtc, u8 *ssn)
{
 ssn[0] = rtc->read(rtc, RTC_BANK1_SSN_MODEL);
 ssn[1] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_1);
 ssn[2] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_2);
 ssn[3] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_3);
 ssn[4] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_4);
 ssn[5] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_5);
 ssn[6] = rtc->read(rtc, RTC_BANK1_SSN_BYTE_6);
 ssn[7] = rtc->read(rtc, RTC_BANK1_SSN_CRC);
}
