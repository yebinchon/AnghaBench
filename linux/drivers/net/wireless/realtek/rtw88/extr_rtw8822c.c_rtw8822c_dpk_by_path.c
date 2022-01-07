
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int BIT_SUBPAGE ;
 int REG_DPD_CTL1_S0 ;
 int REG_NCTL0 ;
 int RFREG_MASK ;
 int RF_MODE_TRXAGC ;
 int RTW_DPK_DO_DPK ;
 int rtw8822c_dpk_get_coef (struct rtw_dev*,int) ;
 int rtw8822c_dpk_one_shot (struct rtw_dev*,int,int ) ;
 scalar_t__ rtw_read32_mask (struct rtw_dev*,int ,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int) ;
 int rtw_write_rf (struct rtw_dev*,int,int ,int ,int) ;

__attribute__((used)) static u8 rtw8822c_dpk_by_path(struct rtw_dev *rtwdev, u32 tx_agc, u8 path)
{
 u8 result;

 result = rtw8822c_dpk_one_shot(rtwdev, path, RTW_DPK_DO_DPK);

 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0x8 | (path << 1));

 result = result | (u8)rtw_read32_mask(rtwdev, REG_DPD_CTL1_S0, BIT(26));

 rtw_write_rf(rtwdev, path, RF_MODE_TRXAGC, RFREG_MASK, 0x33e14);

 rtw8822c_dpk_get_coef(rtwdev, path);

 return result;
}
