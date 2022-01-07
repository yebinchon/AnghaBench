
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtw_dpk_info {int dpk_path_ok; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int BIT_SUBPAGE ;
 int BIT_TX_CFIR ;
 int REG_IQK_CTL1 ;
 int REG_NCTL0 ;
 int RTW_DPK_DPK_ON ;
 int rtw8822c_dpk_cal_gs (struct rtw_dev*,int) ;
 int rtw8822c_dpk_one_shot (struct rtw_dev*,int,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void rtw8822c_dpk_on(struct rtw_dev *rtwdev, u8 path)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;

 rtw8822c_dpk_one_shot(rtwdev, path, RTW_DPK_DPK_ON);

 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0x8 | (path << 1));
 rtw_write32_mask(rtwdev, REG_IQK_CTL1, BIT_TX_CFIR, 0x0);

 if (test_bit(path, dpk_info->dpk_path_ok))
  rtw8822c_dpk_cal_gs(rtwdev, path);
}
