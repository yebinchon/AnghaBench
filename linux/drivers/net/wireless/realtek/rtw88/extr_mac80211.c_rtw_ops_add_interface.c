
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ rx_cnt; scalar_t__ tx_cnt; scalar_t__ rx_unicast; scalar_t__ tx_unicast; } ;
struct rtw_vif {size_t port; int in_lps; int net_type; size_t bcn_ctrl; int mac_addr; int * conf; TYPE_1__ stats; struct ieee80211_vif* vif; } ;
struct rtw_dev {int mutex; } ;
struct ieee80211_vif {int type; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;
typedef enum rtw_net_type { ____Placeholder_rtw_net_type } rtw_net_type ;


 size_t BIT_DIS_TSF_UDT ;
 size_t BIT_EN_BCN_FUNCTION ;




 int PORT_SET_BCN_CTRL ;
 int PORT_SET_MAC_ADDR ;
 int PORT_SET_NET_TYPE ;
 int RTW_NET_AD_HOC ;
 int RTW_NET_AP_MODE ;
 int RTW_NET_NO_LINK ;
 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_info (struct rtw_dev*,char*,int ,size_t) ;
 int * rtw_vif_port ;
 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int ) ;

__attribute__((used)) static int rtw_ops_add_interface(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 enum rtw_net_type net_type;
 u32 config = 0;
 u8 port = 0;
 u8 bcn_ctrl = 0;

 rtwvif->port = port;
 rtwvif->vif = vif;
 rtwvif->stats.tx_unicast = 0;
 rtwvif->stats.rx_unicast = 0;
 rtwvif->stats.tx_cnt = 0;
 rtwvif->stats.rx_cnt = 0;
 rtwvif->in_lps = 0;
 rtwvif->conf = &rtw_vif_port[port];

 mutex_lock(&rtwdev->mutex);

 switch (vif->type) {
 case 130:
 case 129:
  net_type = RTW_NET_AP_MODE;
  bcn_ctrl = BIT_EN_BCN_FUNCTION | BIT_DIS_TSF_UDT;
  break;
 case 131:
  net_type = RTW_NET_AD_HOC;
  bcn_ctrl = BIT_EN_BCN_FUNCTION | BIT_DIS_TSF_UDT;
  break;
 case 128:
 default:
  net_type = RTW_NET_NO_LINK;
  bcn_ctrl = BIT_EN_BCN_FUNCTION;
  break;
 }

 ether_addr_copy(rtwvif->mac_addr, vif->addr);
 config |= PORT_SET_MAC_ADDR;
 rtwvif->net_type = net_type;
 config |= PORT_SET_NET_TYPE;
 rtwvif->bcn_ctrl = bcn_ctrl;
 config |= PORT_SET_BCN_CTRL;
 rtw_vif_port_config(rtwdev, rtwvif, config);

 mutex_unlock(&rtwdev->mutex);

 rtw_info(rtwdev, "start vif %pM on port %d\n", vif->addr, rtwvif->port);
 return 0;
}
