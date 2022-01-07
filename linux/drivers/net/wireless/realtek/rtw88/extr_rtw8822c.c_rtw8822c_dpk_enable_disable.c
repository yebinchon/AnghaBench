
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtw_dpk_info {int is_dpk_pwr_on; int * dpk_gs; int dpk_path_ok; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int BIT (int) ;
 int BIT_DPD_EN ;
 int BIT_SUBPAGE ;
 int REG_DPD_CTL0_S0 ;
 int REG_DPD_CTL0_S1 ;
 int REG_DPD_CTL1_S0 ;
 int REG_DPD_CTL1_S1 ;
 int REG_NCTL0 ;
 size_t RF_PATH_A ;
 size_t RF_PATH_B ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;
 int rtw_write8 (struct rtw_dev*,int ,int ) ;
 scalar_t__ test_bit (size_t,int ) ;

__attribute__((used)) static void rtw8822c_dpk_enable_disable(struct rtw_dev *rtwdev)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 u32 mask = BIT(15) | BIT(14);

 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);

 rtw_write32_mask(rtwdev, REG_DPD_CTL1_S0, BIT_DPD_EN,
    dpk_info->is_dpk_pwr_on);
 rtw_write32_mask(rtwdev, REG_DPD_CTL1_S1, BIT_DPD_EN,
    dpk_info->is_dpk_pwr_on);

 if (test_bit(RF_PATH_A, dpk_info->dpk_path_ok)) {
  rtw_write32_mask(rtwdev, REG_DPD_CTL1_S0, mask, 0x0);
  rtw_write8(rtwdev, REG_DPD_CTL0_S0, dpk_info->dpk_gs[RF_PATH_A]);
 }
 if (test_bit(RF_PATH_B, dpk_info->dpk_path_ok)) {
  rtw_write32_mask(rtwdev, REG_DPD_CTL1_S1, mask, 0x0);
  rtw_write8(rtwdev, REG_DPD_CTL0_S1, dpk_info->dpk_gs[RF_PATH_B]);
 }
}
