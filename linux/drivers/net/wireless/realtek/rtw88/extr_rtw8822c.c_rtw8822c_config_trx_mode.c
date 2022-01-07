
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BB_PATH_A ;
 int BB_PATH_B ;
 int MASK20BITS ;
 int REG_ORITXCODE ;
 int REG_ORITXCODE2 ;
 int rtw8822c_config_rx_path (struct rtw_dev*,int) ;
 int rtw8822c_config_tx_path (struct rtw_dev*,int,int) ;
 int rtw8822c_toggle_igi (struct rtw_dev*) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int) ;

__attribute__((used)) static void rtw8822c_config_trx_mode(struct rtw_dev *rtwdev, u8 tx_path,
         u8 rx_path, bool is_tx2_path)
{
 if ((tx_path | rx_path) & BB_PATH_A)
  rtw_write32_mask(rtwdev, REG_ORITXCODE, MASK20BITS, 0x33312);
 else
  rtw_write32_mask(rtwdev, REG_ORITXCODE, MASK20BITS, 0x11111);
 if ((tx_path | rx_path) & BB_PATH_B)
  rtw_write32_mask(rtwdev, REG_ORITXCODE2, MASK20BITS, 0x33312);
 else
  rtw_write32_mask(rtwdev, REG_ORITXCODE2, MASK20BITS, 0x11111);

 rtw8822c_config_rx_path(rtwdev, rx_path);
 rtw8822c_config_tx_path(rtwdev, tx_path, is_tx2_path);

 rtw8822c_toggle_igi(rtwdev);
}
