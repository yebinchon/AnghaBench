
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1685_priv {scalar_t__ bcd_mode; } ;


 int EDOM ;

__attribute__((used)) static inline int
ds1685_rtc_check_mday(struct ds1685_priv *rtc, u8 mday)
{
 if (rtc->bcd_mode) {
  if (mday < 0x01 || mday > 0x31 || (mday & 0x0f) > 0x09)
   return -EDOM;
 } else {
  if (mday < 1 || mday > 31)
   return -EDOM;
 }
 return 0;
}
