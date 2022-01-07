
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_vif {int mac_addr; } ;
struct rtw_dev {int mutex; } ;
struct ieee80211_vif {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int COEX_SCAN_FINISH ;
 int PORT_SET_MAC_ADDR ;
 int RTW_FLAG_DIG_DISABLE ;
 int RTW_FLAG_SCANNING ;
 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_coex_scan_notify (struct rtw_dev*,int ) ;
 int rtw_flag_clear (struct rtw_dev*,int ) ;
 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int ) ;

__attribute__((used)) static void rtw_ops_sw_scan_complete(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 u32 config = 0;

 mutex_lock(&rtwdev->mutex);

 rtw_flag_clear(rtwdev, RTW_FLAG_SCANNING);
 rtw_flag_clear(rtwdev, RTW_FLAG_DIG_DISABLE);

 ether_addr_copy(rtwvif->mac_addr, vif->addr);
 config |= PORT_SET_MAC_ADDR;
 rtw_vif_port_config(rtwdev, rtwvif, config);

 rtw_coex_scan_notify(rtwdev, COEX_SCAN_FINISH);

 mutex_unlock(&rtwdev->mutex);
}
