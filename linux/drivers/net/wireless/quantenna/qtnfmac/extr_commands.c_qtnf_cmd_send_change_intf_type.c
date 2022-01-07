
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int * bands; } ;
struct TYPE_2__ {int iftype; } ;
struct qtnf_vif {int mac; TYPE_1__ wdev; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int QLINK_CMD_CHANGE_INTF ;
 struct wiphy* priv_to_wiphy (int ) ;
 int qtnf_cmd_band_info_get (int ,int ) ;
 int qtnf_cmd_send_add_change_intf (struct qtnf_vif*,int,int,int *,int ) ;

int qtnf_cmd_send_change_intf_type(struct qtnf_vif *vif,
       enum nl80211_iftype iftype,
       int use4addr,
       u8 *mac_addr)
{
 int ret;

 ret = qtnf_cmd_send_add_change_intf(vif, iftype, use4addr, mac_addr,
         QLINK_CMD_CHANGE_INTF);


 if (ret == 0 && vif->wdev.iftype != iftype) {
  enum nl80211_band band;
  struct wiphy *wiphy = priv_to_wiphy(vif->mac);

  for (band = 0; band < NUM_NL80211_BANDS; ++band) {
   if (!wiphy->bands[band])
    continue;

   qtnf_cmd_band_info_get(vif->mac, wiphy->bands[band]);
  }
 }

 return ret;
}
