
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;
struct rtw8822c_dpk_data {int path; } ;


 int RTW_DPK_GAIN_LOSS ;
 int rtw8822c_dpk_agc_loss_chk (struct rtw_dev*,int ) ;
 int rtw8822c_dpk_one_shot (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static u8 rtw8822c_loss_check_state(struct rtw_dev *rtwdev,
        struct rtw8822c_dpk_data *data)
{
 u8 path = data->path;
 u8 state;

 rtw8822c_dpk_one_shot(rtwdev, path, RTW_DPK_GAIN_LOSS);
 state = rtw8822c_dpk_agc_loss_chk(rtwdev, path);

 return state;
}
