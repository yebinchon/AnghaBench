
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ dpk_band; } ;
struct TYPE_5__ {TYPE_1__ dpk_info; } ;
struct TYPE_6__ {int rf_path_num; } ;
struct rtw_dev {TYPE_2__ dm_info; TYPE_3__ hal; } ;


 int BIT_GLOSS_DB ;
 int BIT_SUBPAGE ;
 int BIT_TX_CFIR ;
 int REG_DPD_CTL11 ;
 int REG_DPD_CTL12 ;
 int REG_DPD_LUT0 ;
 int REG_DPD_LUT3 ;
 int REG_IQK_CTL1 ;
 int REG_NCTL0 ;
 int RFREG_MASK ;
 int RF_RXAGC_OFFSET ;
 scalar_t__ RTW_BAND_2G ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int) ;
 int rtw_write_rf (struct rtw_dev*,int,int ,int ,int) ;

__attribute__((used)) static void rtw8822c_dpk_pre_setting(struct rtw_dev *rtwdev)
{
 u8 path;

 for (path = 0; path < rtwdev->hal.rf_path_num; path++) {
  rtw_write_rf(rtwdev, path, RF_RXAGC_OFFSET, RFREG_MASK, 0x0);
  rtw_write32(rtwdev, REG_NCTL0, 0x8 | (path << 1));
  if (rtwdev->dm_info.dpk_info.dpk_band == RTW_BAND_2G)
   rtw_write32(rtwdev, REG_DPD_LUT3, 0x1f100000);
  else
   rtw_write32(rtwdev, REG_DPD_LUT3, 0x1f0d0000);
  rtw_write32_mask(rtwdev, REG_DPD_LUT0, BIT_GLOSS_DB, 0x4);
  rtw_write32_mask(rtwdev, REG_IQK_CTL1, BIT_TX_CFIR, 0x3);
 }
 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);
 rtw_write32(rtwdev, REG_DPD_CTL11, 0x3b23170b);
 rtw_write32(rtwdev, REG_DPD_CTL12, 0x775f5347);
}
