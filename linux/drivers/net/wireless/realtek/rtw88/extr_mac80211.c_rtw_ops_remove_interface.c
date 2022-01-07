
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_vif {scalar_t__ bcn_ctrl; int net_type; int mac_addr; int port; } ;
struct rtw_dev {int mutex; } ;
struct ieee80211_vif {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int PORT_SET_BCN_CTRL ;
 int PORT_SET_MAC_ADDR ;
 int PORT_SET_NET_TYPE ;
 int RTW_NET_NO_LINK ;
 int eth_zero_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_info (struct rtw_dev*,char*,int ,int ) ;
 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int ) ;

__attribute__((used)) static void rtw_ops_remove_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 u32 config = 0;

 rtw_info(rtwdev, "stop vif %pM on port %d\n", vif->addr, rtwvif->port);

 mutex_lock(&rtwdev->mutex);

 eth_zero_addr(rtwvif->mac_addr);
 config |= PORT_SET_MAC_ADDR;
 rtwvif->net_type = RTW_NET_NO_LINK;
 config |= PORT_SET_NET_TYPE;
 rtwvif->bcn_ctrl = 0;
 config |= PORT_SET_BCN_CTRL;
 rtw_vif_port_config(rtwdev, rtwvif, config);

 mutex_unlock(&rtwdev->mutex);
}
