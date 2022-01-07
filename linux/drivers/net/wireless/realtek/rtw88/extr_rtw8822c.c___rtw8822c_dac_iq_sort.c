
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int swap_u32 (int*,int*) ;

__attribute__((used)) static void __rtw8822c_dac_iq_sort(struct rtw_dev *rtwdev, u32 *v1, u32 *v2)
{
 if (*v1 >= 0x200 && *v2 >= 0x200) {
  if (*v1 > *v2)
   swap_u32(v1, v2);
 } else if (*v1 < 0x200 && *v2 < 0x200) {
  if (*v1 > *v2)
   swap_u32(v1, v2);
 } else if (*v1 < 0x200 && *v2 >= 0x200) {
  swap_u32(v1, v2);
 }
}
