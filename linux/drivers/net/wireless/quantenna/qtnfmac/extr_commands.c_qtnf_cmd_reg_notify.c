
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct sk_buff {scalar_t__ data; } ;
struct regulatory_request {int initiator; int user_reg_hint_type; int dfs_region; int * alpha2; } ;
struct qtnf_wmac {int macid; struct qtnf_bus* bus; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_reg_notify {int slave_radar; scalar_t__ num_channels; int dfs_region; int user_reg_hint_type; int initiator; int * alpha2; } ;
struct ieee80211_supported_band {unsigned int n_channels; int * channels; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int ENOMEM ;
 int NUM_NL80211_BANDS ;
 int QLINK_CMD_REG_NOTIFY ;
 int QLINK_DFS_ETSI ;
 int QLINK_DFS_FCC ;
 int QLINK_DFS_JP ;
 int QLINK_DFS_UNSET ;
 int QLINK_REGDOM_SET_BY_CORE ;
 int QLINK_REGDOM_SET_BY_COUNTRY_IE ;
 int QLINK_REGDOM_SET_BY_DRIVER ;
 int QLINK_REGDOM_SET_BY_USER ;
 int QLINK_USER_REG_HINT_CELL_BASE ;
 int QLINK_USER_REG_HINT_INDOOR ;
 int QLINK_USER_REG_HINT_USER ;
 int QLINK_VIFID_RSVD ;
 struct wiphy* priv_to_wiphy (struct qtnf_wmac*) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_channel_tlv_add (struct sk_buff*,int *) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;

int qtnf_cmd_reg_notify(struct qtnf_wmac *mac, struct regulatory_request *req,
   bool slave_radar)
{
 struct wiphy *wiphy = priv_to_wiphy(mac);
 struct qtnf_bus *bus = mac->bus;
 struct sk_buff *cmd_skb;
 int ret;
 struct qlink_cmd_reg_notify *cmd;
 enum nl80211_band band;
 const struct ieee80211_supported_band *cfg_band;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(mac->macid, QLINK_VIFID_RSVD,
         QLINK_CMD_REG_NOTIFY,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 cmd = (struct qlink_cmd_reg_notify *)cmd_skb->data;
 cmd->alpha2[0] = req->alpha2[0];
 cmd->alpha2[1] = req->alpha2[1];

 switch (req->initiator) {
 case 134:
  cmd->initiator = QLINK_REGDOM_SET_BY_CORE;
  break;
 case 131:
  cmd->initiator = QLINK_REGDOM_SET_BY_USER;
  break;
 case 132:
  cmd->initiator = QLINK_REGDOM_SET_BY_DRIVER;
  break;
 case 133:
  cmd->initiator = QLINK_REGDOM_SET_BY_COUNTRY_IE;
  break;
 }

 switch (req->user_reg_hint_type) {
 case 128:
  cmd->user_reg_hint_type = QLINK_USER_REG_HINT_USER;
  break;
 case 130:
  cmd->user_reg_hint_type = QLINK_USER_REG_HINT_CELL_BASE;
  break;
 case 129:
  cmd->user_reg_hint_type = QLINK_USER_REG_HINT_INDOOR;
  break;
 }

 switch (req->dfs_region) {
 case 136:
  cmd->dfs_region = QLINK_DFS_FCC;
  break;
 case 137:
  cmd->dfs_region = QLINK_DFS_ETSI;
  break;
 case 135:
  cmd->dfs_region = QLINK_DFS_JP;
  break;
 default:
  cmd->dfs_region = QLINK_DFS_UNSET;
  break;
 }

 cmd->slave_radar = slave_radar;
 cmd->num_channels = 0;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  unsigned int i;

  cfg_band = wiphy->bands[band];
  if (!cfg_band)
   continue;

  cmd->num_channels += cfg_band->n_channels;

  for (i = 0; i < cfg_band->n_channels; ++i) {
   qtnf_cmd_channel_tlv_add(cmd_skb,
       &cfg_band->channels[i]);
  }
 }

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send(bus, cmd_skb);
 qtnf_bus_unlock(bus);

 return ret;
}
