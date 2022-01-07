
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int rtw8822c_config_cck_tx_path (struct rtw_dev*,int ,int) ;
 int rtw8822c_config_ofdm_tx_path (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822c_config_tx_path(struct rtw_dev *rtwdev, u8 tx_path,
        bool is_tx2_path)
{
 rtw8822c_config_cck_tx_path(rtwdev, tx_path, is_tx2_path);
 rtw8822c_config_ofdm_tx_path(rtwdev, tx_path, is_tx2_path);
}
