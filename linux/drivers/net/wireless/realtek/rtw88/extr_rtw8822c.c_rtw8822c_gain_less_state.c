
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;
struct rtw8822c_dpk_data {int pga; int limited_pga; int path; } ;


 int BIT_RXAGC ;
 int RF_MODE_TRXAGC ;
 int RTW_DPK_GAIN_CHECK ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;

__attribute__((used)) static u8 rtw8822c_gain_less_state(struct rtw_dev *rtwdev,
       struct rtw8822c_dpk_data *data)
{
 u8 pga = data->pga;

 if (pga < 0xc)
  rtw_write_rf(rtwdev, data->path, RF_MODE_TRXAGC, BIT_RXAGC, 0xc);
 else if (pga > 0xb && pga < 0xf)
  rtw_write_rf(rtwdev, data->path, RF_MODE_TRXAGC, BIT_RXAGC, 0xf);
 else if (pga > 0xe)
  data->limited_pga = 1;

 return RTW_DPK_GAIN_CHECK;
}
