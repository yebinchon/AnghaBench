
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtw_dev {int dummy; } ;


 size_t DPK_RF_REG_NUM ;
 int RFREG_MASK ;
 size_t RF_PATH_A ;
 size_t RF_PATH_B ;
 int rtw_write_rf (struct rtw_dev*,size_t,size_t,int ,size_t) ;

__attribute__((used)) static void rtw8822c_dpk_reload_rf_registers(struct rtw_dev *rtwdev,
          u32 *rf_reg,
          u32 rf_reg_bak[][2])
{
 u32 i;

 for (i = 0; i < DPK_RF_REG_NUM; i++) {
  rtw_write_rf(rtwdev, RF_PATH_A, rf_reg[i], RFREG_MASK,
        rf_reg_bak[i][RF_PATH_A]);
  rtw_write_rf(rtwdev, RF_PATH_B, rf_reg[i], RFREG_MASK,
        rf_reg_bak[i][RF_PATH_B]);
 }
}
