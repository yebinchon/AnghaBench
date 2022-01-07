
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_hal {scalar_t__ antenna_rx; scalar_t__ cut_version; } ;
struct rtw_efuse {int rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_hal hal; } ;
struct rtw8822b_rfe_info {int fem; int ifem_ext; struct cca_ccut* cca_ccut_5g; struct cca_ccut* cca_ccut_2g; } ;
struct cca_ccut {int dummy; } ;


 scalar_t__ BB_PATH_A ;
 scalar_t__ BB_PATH_B ;
 int CCUT_IDX_1R_2G ;
 int CCUT_IDX_1R_5G ;
 int CCUT_IDX_2R_2G ;
 int CCUT_IDX_2R_5G ;
 int MASKDWORD ;
 int REG_CCA2ND ;
 int REG_CCASEL ;
 int REG_L1WT ;
 int REG_PDMFTH ;
 int RTW_CHANNEL_WIDTH_20 ;
 int RTW_CHANNEL_WIDTH_40 ;
 scalar_t__ RTW_CHIP_VER_CUT_B ;



 int rtw8822b_get_cca_val (struct cca_ccut const*,int,int*,int*,int*) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822b_set_channel_cca(struct rtw_dev *rtwdev, u8 channel, u8 bw,
         const struct rtw8822b_rfe_info *rfe_info)
{
 struct rtw_hal *hal = &rtwdev->hal;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 const struct cca_ccut *cca_ccut;
 u8 col;
 u32 reg82c, reg830, reg838;
 bool is_efem_cca = 0, is_ifem_cca = 0, is_rfe_type = 0;

 if (channel <= 14) {
  cca_ccut = rfe_info->cca_ccut_2g;

  if (hal->antenna_rx == BB_PATH_A ||
      hal->antenna_rx == BB_PATH_B)
   col = CCUT_IDX_1R_2G;
  else
   col = CCUT_IDX_2R_2G;
 } else {
  cca_ccut = rfe_info->cca_ccut_5g;

  if (hal->antenna_rx == BB_PATH_A ||
      hal->antenna_rx == BB_PATH_B)
   col = CCUT_IDX_1R_5G;
  else
   col = CCUT_IDX_2R_5G;
 }

 rtw8822b_get_cca_val(cca_ccut, col, &reg82c, &reg830, &reg838);

 switch (rfe_info->fem) {
 case 129:
 default:
  is_ifem_cca = 1;
  if (rfe_info->ifem_ext)
   is_rfe_type = 1;
  break;
 case 130:
  is_efem_cca = 1;
  break;
 case 128:
  if (channel <= 14)
   is_ifem_cca = 1;
  else
   is_efem_cca = 1;
  break;
 }

 if (is_ifem_cca) {
  if ((hal->cut_version == RTW_CHIP_VER_CUT_B &&
       (col == CCUT_IDX_2R_2G || col == CCUT_IDX_2R_5G) &&
       bw == RTW_CHANNEL_WIDTH_40) ||
      (!is_rfe_type && col == CCUT_IDX_2R_5G &&
       bw == RTW_CHANNEL_WIDTH_40) ||
      (efuse->rfe_option == 5 && col == CCUT_IDX_2R_5G))
   reg830 = 0x79a0ea28;
 }

 rtw_write32_mask(rtwdev, REG_CCASEL, MASKDWORD, reg82c);
 rtw_write32_mask(rtwdev, REG_PDMFTH, MASKDWORD, reg830);
 rtw_write32_mask(rtwdev, REG_CCA2ND, MASKDWORD, reg838);

 if (is_efem_cca && !(hal->cut_version == RTW_CHIP_VER_CUT_B))
  rtw_write32_mask(rtwdev, REG_L1WT, MASKDWORD, 0x9194b2b9);

 if (bw == RTW_CHANNEL_WIDTH_20 &&
     ((channel >= 52 && channel <= 64) ||
      (channel >= 100 && channel <= 144)))
  rtw_write32_mask(rtwdev, REG_CCA2ND, 0xf0, 0x4);
}
