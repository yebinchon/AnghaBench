
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtw_vif {int net_type; int bssid; scalar_t__ aid; } ;
struct rtw_dev {int mutex; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;
struct ieee80211_bss_conf {int bssid; scalar_t__ assoc; scalar_t__ aid; } ;
typedef enum rtw_net_type { ____Placeholder_rtw_net_type } rtw_net_type ;
struct TYPE_2__ {int (* phy_calibration ) (struct rtw_dev*) ;} ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BSSID ;
 int COEX_ASSOCIATE_FINISH ;
 int PORT_SET_AID ;
 int PORT_SET_BSSID ;
 int PORT_SET_NET_TYPE ;
 int RSVD_NULL ;
 int RSVD_PS_POLL ;
 int RSVD_QOS_NULL ;
 int RTW_NET_MGD_LINKED ;
 int RTW_NET_NO_LINK ;
 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_add_rsvd_page (struct rtw_dev*,int ,int) ;
 int rtw_coex_connect_notify (struct rtw_dev*,int ) ;
 int rtw_coex_media_status_notify (struct rtw_dev*,scalar_t__) ;
 int rtw_fw_download_rsvd_page (struct rtw_dev*,struct ieee80211_vif*) ;
 int rtw_reset_rsvd_page (struct rtw_dev*) ;
 int rtw_send_rsvd_page_h2c (struct rtw_dev*) ;
 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int) ;
 int stub1 (struct rtw_dev*) ;

__attribute__((used)) static void rtw_ops_bss_info_changed(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *conf,
         u32 changed)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 u32 config = 0;

 mutex_lock(&rtwdev->mutex);

 if (changed & BSS_CHANGED_ASSOC) {
  struct rtw_chip_info *chip = rtwdev->chip;
  enum rtw_net_type net_type;

  if (conf->assoc) {
   rtw_coex_connect_notify(rtwdev, COEX_ASSOCIATE_FINISH);
   net_type = RTW_NET_MGD_LINKED;
   chip->ops->phy_calibration(rtwdev);

   rtwvif->aid = conf->aid;
   rtw_add_rsvd_page(rtwdev, RSVD_PS_POLL, 1);
   rtw_add_rsvd_page(rtwdev, RSVD_QOS_NULL, 1);
   rtw_add_rsvd_page(rtwdev, RSVD_NULL, 1);
   rtw_fw_download_rsvd_page(rtwdev, vif);
   rtw_send_rsvd_page_h2c(rtwdev);
   rtw_coex_media_status_notify(rtwdev, conf->assoc);
  } else {
   net_type = RTW_NET_NO_LINK;
   rtwvif->aid = 0;
   rtw_reset_rsvd_page(rtwdev);
  }

  rtwvif->net_type = net_type;
  config |= PORT_SET_NET_TYPE;
  config |= PORT_SET_AID;
 }

 if (changed & BSS_CHANGED_BSSID) {
  ether_addr_copy(rtwvif->bssid, conf->bssid);
  config |= PORT_SET_BSSID;
 }

 if (changed & BSS_CHANGED_BEACON)
  rtw_fw_download_rsvd_page(rtwdev, vif);

 rtw_vif_port_config(rtwdev, rtwvif, config);

 mutex_unlock(&rtwdev->mutex);
}
