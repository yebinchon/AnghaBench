
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_vif {int mac_addr; } ;
struct rtw_dev {int mutex; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int COEX_SCAN_START ;
 int PORT_SET_MAC_ADDR ;
 int RTW_FLAG_DIG_DISABLE ;
 int RTW_FLAG_SCANNING ;
 int ether_addr_copy (int ,int const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_coex_scan_notify (struct rtw_dev*,int ) ;
 int rtw_flag_set (struct rtw_dev*,int ) ;
 int rtw_leave_lps (struct rtw_dev*,struct rtw_vif*) ;
 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int ) ;

__attribute__((used)) static void rtw_ops_sw_scan_start(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      const u8 *mac_addr)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 u32 config = 0;

 rtw_leave_lps(rtwdev, rtwvif);

 mutex_lock(&rtwdev->mutex);

 ether_addr_copy(rtwvif->mac_addr, mac_addr);
 config |= PORT_SET_MAC_ADDR;
 rtw_vif_port_config(rtwdev, rtwvif, config);

 rtw_coex_scan_notify(rtwdev, COEX_SCAN_START);

 rtw_flag_set(rtwdev, RTW_FLAG_DIG_DISABLE);
 rtw_flag_set(rtwdev, RTW_FLAG_SCANNING);

 mutex_unlock(&rtwdev->mutex);
}
