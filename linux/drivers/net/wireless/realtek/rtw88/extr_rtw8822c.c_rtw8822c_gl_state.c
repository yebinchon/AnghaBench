
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;
struct rtw8822c_dpk_data {int txbb; scalar_t__ limited_pga; int path; } ;


 int BIT_GAIN_TXBB ;
 int RF_TX_GAIN ;
 int RTW_DPK_AGC_OUT ;
 int RTW_DPK_GAIN_CHECK ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;

__attribute__((used)) static u8 rtw8822c_gl_state(struct rtw_dev *rtwdev,
       struct rtw8822c_dpk_data *data, u8 is_large)
{
 u8 txbb_bound[] = {0x1f, 0};

 if (data->txbb == txbb_bound[is_large])
  return RTW_DPK_AGC_OUT;

 if (is_large == 1)
  data->txbb -= 2;
 else
  data->txbb += 3;

 rtw_write_rf(rtwdev, data->path, RF_TX_GAIN, BIT_GAIN_TXBB, data->txbb);
 data->limited_pga = 0;

 return RTW_DPK_GAIN_CHECK;
}
