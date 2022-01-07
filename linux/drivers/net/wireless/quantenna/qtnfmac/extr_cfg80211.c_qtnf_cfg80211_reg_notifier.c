
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int * bands; } ;
struct regulatory_request {int * alpha2; int initiator; } ;
struct qtnf_wmac {int macid; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int pr_err (char*,int ,int,...) ;
 int qtnf_cmd_band_info_get (struct qtnf_wmac*,int ) ;
 int qtnf_cmd_reg_notify (struct qtnf_wmac*,struct regulatory_request*,int ) ;
 int qtnf_mac_slave_radar_get (struct wiphy*) ;
 struct qtnf_wmac* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void qtnf_cfg80211_reg_notifier(struct wiphy *wiphy,
           struct regulatory_request *req)
{
 struct qtnf_wmac *mac = wiphy_priv(wiphy);
 enum nl80211_band band;
 int ret;

 pr_debug("MAC%u: initiator=%d alpha=%c%c\n", mac->macid, req->initiator,
   req->alpha2[0], req->alpha2[1]);

 ret = qtnf_cmd_reg_notify(mac, req, qtnf_mac_slave_radar_get(wiphy));
 if (ret) {
  pr_err("MAC%u: failed to update region to %c%c: %d\n",
         mac->macid, req->alpha2[0], req->alpha2[1], ret);
  return;
 }

 for (band = 0; band < NUM_NL80211_BANDS; ++band) {
  if (!wiphy->bands[band])
   continue;

  ret = qtnf_cmd_band_info_get(mac, wiphy->bands[band]);
  if (ret)
   pr_err("MAC%u: failed to update band %u\n",
          mac->macid, band);
 }
}
