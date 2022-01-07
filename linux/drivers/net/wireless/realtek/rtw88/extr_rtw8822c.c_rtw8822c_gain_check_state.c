
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;
struct rtw8822c_dpk_data {int agc_cnt; scalar_t__ gain_only; int limited_pga; int path; scalar_t__ loss_only; scalar_t__ pga; scalar_t__ txbb; } ;


 int BIT_GAIN_TXBB ;
 int BIT_RXAGC ;
 int RF_MODE_TRXAGC ;
 int RF_TX_GAIN ;
 scalar_t__ RTW_DPK_AGC_OUT ;
 scalar_t__ RTW_DPK_GAIN_CHECK ;
 scalar_t__ RTW_DPK_LOSS_CHECK ;
 scalar_t__ rtw8822c_dpk_agc_gain_chk (struct rtw_dev*,int ,int ) ;
 scalar_t__ rtw_read_rf (struct rtw_dev*,int ,int ,int ) ;

__attribute__((used)) static u8 rtw8822c_gain_check_state(struct rtw_dev *rtwdev,
        struct rtw8822c_dpk_data *data)
{
 u8 state;

 data->txbb = (u8)rtw_read_rf(rtwdev, data->path, RF_TX_GAIN,
         BIT_GAIN_TXBB);
 data->pga = (u8)rtw_read_rf(rtwdev, data->path, RF_MODE_TRXAGC,
        BIT_RXAGC);

 if (data->loss_only) {
  state = RTW_DPK_LOSS_CHECK;
  goto check_end;
 }

 state = rtw8822c_dpk_agc_gain_chk(rtwdev, data->path,
       data->limited_pga);
 if (state == RTW_DPK_GAIN_CHECK && data->gain_only)
  state = RTW_DPK_AGC_OUT;
 else if (state == RTW_DPK_GAIN_CHECK)
  state = RTW_DPK_LOSS_CHECK;

check_end:
 data->agc_cnt++;
 if (data->agc_cnt >= 6)
  state = RTW_DPK_AGC_OUT;

 return state;
}
