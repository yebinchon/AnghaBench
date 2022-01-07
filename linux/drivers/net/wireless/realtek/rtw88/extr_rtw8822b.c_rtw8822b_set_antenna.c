
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rtw_hal {void* antenna_rx; void* antenna_tx; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 void* BB_PATH_AB ;
 int RTW_DBG_PHY ;
 int rtw8822b_check_rf_path (void*) ;
 int rtw8822b_config_trx_mode (struct rtw_dev*,void*,void*,int) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,void*,void*) ;
 int rtw_info (struct rtw_dev*,char*) ;

__attribute__((used)) static void rtw8822b_set_antenna(struct rtw_dev *rtwdev, u8 antenna_tx,
     u8 antenna_rx)
{
 struct rtw_hal *hal = &rtwdev->hal;

 rtw_dbg(rtwdev, RTW_DBG_PHY, "config RF path, tx=0x%x rx=0x%x\n",
  antenna_tx, antenna_rx);

 if (!rtw8822b_check_rf_path(antenna_tx)) {
  rtw_info(rtwdev, "unsupport tx path, set to default path ab\n");
  antenna_tx = BB_PATH_AB;
 }
 if (!rtw8822b_check_rf_path(antenna_rx)) {
  rtw_info(rtwdev, "unsupport rx path, set to default path ab\n");
  antenna_rx = BB_PATH_AB;
 }
 hal->antenna_tx = antenna_tx;
 hal->antenna_rx = antenna_rx;
 rtw8822b_config_trx_mode(rtwdev, antenna_tx, antenna_rx, 0);
}
