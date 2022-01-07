
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int RTW_DPK_DAGC ;
 int RTW_DPK_GAIN_LARGE ;
 int RTW_DPK_GAIN_LESS ;
 int rtw8822c_dpk_dgain_read (struct rtw_dev*,int ) ;
 int rtw8822c_dpk_one_shot (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static u8 rtw8822c_dpk_agc_gain_chk(struct rtw_dev *rtwdev, u8 path,
        u8 limited_pga)
{
 u8 result = 0;
 u16 dgain;

 rtw8822c_dpk_one_shot(rtwdev, path, RTW_DPK_DAGC);
 dgain = rtw8822c_dpk_dgain_read(rtwdev, path);

 if (dgain > 1535 && !limited_pga)
  return RTW_DPK_GAIN_LESS;
 else if (dgain < 768 && !limited_pga)
  return RTW_DPK_GAIN_LARGE;
 else
  return result;
}
