
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int DACK_SN_8822C ;
 int RFREG_MASK ;
 int RF_PATH_A ;
 int RF_PATH_B ;
 int RTW_DBG_RFK ;
 int rtw8822c_dac_cal_iq_sample (struct rtw_dev*,int *,int *) ;
 int rtw8822c_dac_cal_iq_search (struct rtw_dev*,int *,int *,int *,int *) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int ) ;
 int rtw_read_rf (struct rtw_dev*,int ,int,int ) ;

__attribute__((used)) static void rtw8822c_dac_cal_rf_mode(struct rtw_dev *rtwdev,
         u32 *i_value, u32 *q_value)
{
 u32 iv[DACK_SN_8822C], qv[DACK_SN_8822C];
 u32 rf_a, rf_b;

 rf_a = rtw_read_rf(rtwdev, RF_PATH_A, 0x0, RFREG_MASK);
 rf_b = rtw_read_rf(rtwdev, RF_PATH_B, 0x0, RFREG_MASK);

 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DACK] RF path-A=0x%05x\n", rf_a);
 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DACK] RF path-B=0x%05x\n", rf_b);

 rtw8822c_dac_cal_iq_sample(rtwdev, iv, qv);
 rtw8822c_dac_cal_iq_search(rtwdev, iv, qv, i_value, q_value);
}
