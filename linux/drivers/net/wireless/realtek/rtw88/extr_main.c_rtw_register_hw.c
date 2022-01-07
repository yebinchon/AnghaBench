
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtw_vif {int dummy; } ;
struct rtw_sta_info {int dummy; } ;
struct TYPE_6__ {int alpha2; } ;
struct TYPE_5__ {int addr; } ;
struct rtw_dev {TYPE_2__ regd; TYPE_1__ efuse; TYPE_3__* chip; } ;
struct ieee80211_hw {int extra_tx_headroom; int sta_data_size; int vif_data_size; TYPE_4__* wiphy; int queues; } ;
struct TYPE_8__ {int interface_modes; int flags; int features; } ;
struct TYPE_7__ {int tx_pkt_desc_sz; } ;


 int AMPDU_AGGREGATION ;
 int BIT (int ) ;
 int IEEE80211_NUM_ACS ;
 int MFP_CAPABLE ;
 int NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int REPORTS_TX_ACK_STATUS ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int ) ;
 int SIGNAL_DBM ;
 int SUPPORTS_AMSDU_IN_AMPDU ;
 int SUPPORTS_DYNAMIC_PS ;
 int SUPPORTS_PS ;
 int SUPPORT_FAST_XMIT ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WIPHY_FLAG_TDLS_EXTERNAL_SETUP ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 scalar_t__ regulatory_hint (TYPE_4__*,int ) ;
 int rtw_debugfs_init (struct rtw_dev*) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_regd_init (struct rtw_dev*,int ) ;
 int rtw_regd_notifier ;
 int rtw_set_supported_band (struct ieee80211_hw*,TYPE_3__*) ;

int rtw_register_hw(struct rtw_dev *rtwdev, struct ieee80211_hw *hw)
{
 int max_tx_headroom = 0;
 int ret;


 max_tx_headroom = rtwdev->chip->tx_pkt_desc_sz;

 hw->extra_tx_headroom = max_tx_headroom;
 hw->queues = IEEE80211_NUM_ACS;
 hw->sta_data_size = sizeof(struct rtw_sta_info);
 hw->vif_data_size = sizeof(struct rtw_vif);

 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(hw, MFP_CAPABLE);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(hw, SUPPORTS_PS);
 ieee80211_hw_set(hw, SUPPORTS_DYNAMIC_PS);
 ieee80211_hw_set(hw, SUPPORT_FAST_XMIT);
 ieee80211_hw_set(hw, SUPPORTS_AMSDU_IN_AMPDU);

 hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
         BIT(NL80211_IFTYPE_AP) |
         BIT(NL80211_IFTYPE_ADHOC) |
         BIT(NL80211_IFTYPE_MESH_POINT);

 hw->wiphy->flags |= WIPHY_FLAG_SUPPORTS_TDLS |
       WIPHY_FLAG_TDLS_EXTERNAL_SETUP;

 hw->wiphy->features |= NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR;

 rtw_set_supported_band(hw, rtwdev->chip);
 SET_IEEE80211_PERM_ADDR(hw, rtwdev->efuse.addr);

 rtw_regd_init(rtwdev, rtw_regd_notifier);

 ret = ieee80211_register_hw(hw);
 if (ret) {
  rtw_err(rtwdev, "failed to register hw\n");
  return ret;
 }

 if (regulatory_hint(hw->wiphy, rtwdev->regd.alpha2))
  rtw_err(rtwdev, "regulatory_hint fail\n");

 rtw_debugfs_init(rtwdev);

 return 0;
}
