
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int DACK_SN_8822C ;
 int __rtw8822c_dac_iq_sort (struct rtw_dev*,int*,int*) ;

__attribute__((used)) static void rtw8822c_dac_iq_sort(struct rtw_dev *rtwdev, u32 *iv, u32 *qv)
{
 u32 i, j;

 for (i = 0; i < DACK_SN_8822C - 1; i++) {
  for (j = 0; j < (DACK_SN_8822C - 1 - i) ; j++) {
   __rtw8822c_dac_iq_sort(rtwdev, &iv[j], &iv[j + 1]);
   __rtw8822c_dac_iq_sort(rtwdev, &qv[j], &qv[j + 1]);
  }
 }
}
