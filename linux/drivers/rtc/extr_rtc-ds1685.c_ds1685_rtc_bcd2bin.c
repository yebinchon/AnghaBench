
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1685_priv {scalar_t__ bcd_mode; } ;


 int bcd2bin (int) ;

__attribute__((used)) static inline u8
ds1685_rtc_bcd2bin(struct ds1685_priv *rtc, u8 val, u8 bcd_mask, u8 bin_mask)
{
 if (rtc->bcd_mode)
  return (bcd2bin(val) & bcd_mask);

 return (val & bin_mask);
}
