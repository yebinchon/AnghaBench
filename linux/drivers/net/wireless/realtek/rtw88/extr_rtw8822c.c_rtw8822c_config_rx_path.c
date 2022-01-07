
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int rtw8822c_config_cck_rx_path (struct rtw_dev*,int ) ;
 int rtw8822c_config_ofdm_rx_path (struct rtw_dev*,int ) ;

__attribute__((used)) static void rtw8822c_config_rx_path(struct rtw_dev *rtwdev, u8 rx_path)
{
 rtw8822c_config_cck_rx_path(rtwdev, rx_path);
 rtw8822c_config_ofdm_rx_path(rtwdev, rx_path);
}
