
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtw_dev {int dummy; } ;



__attribute__((used)) static bool rtw8822c_dpk_coef_iq_check(struct rtw_dev *rtwdev,
           u16 coef_i, u16 coef_q)
{
 if (coef_i == 0x1000 || coef_i == 0x0fff ||
     coef_q == 0x1000 || coef_q == 0x0fff)
  return 1;
 else
  return 0;
}
