
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;



__attribute__((used)) static void rtw8822c_rf_minmax_cmp(struct rtw_dev *rtwdev, u32 value,
       u32 *min, u32 *max)
{
 if (value >= 0x200) {
  if (*min >= 0x200) {
   if (*min > value)
    *min = value;
  } else {
   *min = value;
  }
  if (*max >= 0x200) {
   if (*max < value)
    *max = value;
  }
 } else {
  if (*min < 0x200) {
   if (*min > value)
    *min = value;
  }

  if (*max >= 0x200) {
   *max = value;
  } else {
   if (*max < value)
    *max = value;
  }
 }
}
