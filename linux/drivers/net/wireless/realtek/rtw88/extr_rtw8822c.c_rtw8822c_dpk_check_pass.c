
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ rtw8822c_dpk_coef_read (struct rtw_dev*,int ) ;
 int rtw8822c_dpk_fill_result (struct rtw_dev*,int ,int ,int) ;

__attribute__((used)) static bool rtw8822c_dpk_check_pass(struct rtw_dev *rtwdev, bool is_fail,
        u32 dpk_txagc, u8 path)
{
 bool result;

 if (!is_fail) {
  if (rtw8822c_dpk_coef_read(rtwdev, path))
   result = 1;
  else
   result = 0;
 } else {
  result = 0;
 }

 rtw8822c_dpk_fill_result(rtwdev, dpk_txagc, path, result);

 return result;
}
