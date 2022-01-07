
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wiphy {int registered; } ;
struct qtnf_vif {TYPE_3__* netdev; TYPE_2__* mac; } ;
struct qlink_event_external_auth {int action; int bssid; int akm_suite; int ssid_len; int ssid; } ;
struct TYPE_4__ {int ssid_len; int ssid; } ;
struct cfg80211_external_auth_params {int key_mgmt_suite; int action; int bssid; TYPE_1__ ssid; int member_0; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int macid; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int cfg80211_external_auth_request (TYPE_3__*,struct cfg80211_external_auth_params*,int ) ;
 int ether_addr_copy (int ,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int ,int ,int ) ;
 int pr_warn (char*) ;
 struct wiphy* priv_to_wiphy (TYPE_2__*) ;

__attribute__((used)) static int
qtnf_event_handle_external_auth(struct qtnf_vif *vif,
    const struct qlink_event_external_auth *ev,
    u16 len)
{
 struct cfg80211_external_auth_params auth = {0};
 struct wiphy *wiphy = priv_to_wiphy(vif->mac);
 int ret;

 if (len < sizeof(*ev)) {
  pr_err("MAC%u: payload is too short\n", vif->mac->macid);
  return -EINVAL;
 }

 if (!wiphy->registered || !vif->netdev)
  return 0;

 if (ev->ssid_len) {
  memcpy(auth.ssid.ssid, ev->ssid, ev->ssid_len);
  auth.ssid.ssid_len = ev->ssid_len;
 }

 auth.key_mgmt_suite = le32_to_cpu(ev->akm_suite);
 ether_addr_copy(auth.bssid, ev->bssid);
 auth.action = ev->action;

 pr_info("%s: external auth bss=%pM action=%u akm=%u\n",
  vif->netdev->name, auth.bssid, auth.action,
  auth.key_mgmt_suite);

 ret = cfg80211_external_auth_request(vif->netdev, &auth, GFP_KERNEL);
 if (ret)
  pr_warn("failed to offload external auth request\n");

 return ret;
}
