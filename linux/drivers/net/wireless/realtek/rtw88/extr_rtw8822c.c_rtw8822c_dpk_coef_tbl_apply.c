
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtw_dpk_info {int ** coef; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int REG_RXSRAM_CTL ;
 int rtw8822c_dpk_coef_transfer (struct rtw_dev*) ;
 int * rtw8822c_dpk_get_coef_tbl ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw8822c_dpk_coef_tbl_apply(struct rtw_dev *rtwdev, u8 path)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 int i;

 for (i = 0; i < 20; i++) {
  rtw_write32(rtwdev, REG_RXSRAM_CTL,
       rtw8822c_dpk_get_coef_tbl[i]);
  dpk_info->coef[path][i] = rtw8822c_dpk_coef_transfer(rtwdev);
 }
}
