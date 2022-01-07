
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* len; void* type; } ;
struct qlink_channel {int flags; int dfs_state; int beacon_found; int max_antenna_gain; int max_reg_power; int max_power; int band; void* hw_value; void* center_freq; } ;
struct qlink_tlv_channel {TYPE_1__ hdr; struct qlink_channel chan; } ;
struct ieee80211_channel {int center_freq; int hw_value; int flags; int dfs_state; int beacon_found; int max_antenna_gain; int max_reg_power; int max_power; int band; } ;


 int QTN_TLV_ID_CHANNEL ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int qlink_utils_band_cfg2q (int ) ;
 int qlink_utils_chflags_cfg2q (int ) ;
 int qlink_utils_dfs_state_cfg2q (int ) ;
 struct qlink_tlv_channel* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static void qtnf_cmd_channel_tlv_add(struct sk_buff *cmd_skb,
         const struct ieee80211_channel *sc)
{
 struct qlink_tlv_channel *tlv;
 struct qlink_channel *qch;

 tlv = skb_put_zero(cmd_skb, sizeof(*tlv));
 qch = &tlv->chan;
 tlv->hdr.type = cpu_to_le16(QTN_TLV_ID_CHANNEL);
 tlv->hdr.len = cpu_to_le16(sizeof(*qch));

 qch->center_freq = cpu_to_le16(sc->center_freq);
 qch->hw_value = cpu_to_le16(sc->hw_value);
 qch->band = qlink_utils_band_cfg2q(sc->band);
 qch->max_power = sc->max_power;
 qch->max_reg_power = sc->max_reg_power;
 qch->max_antenna_gain = sc->max_antenna_gain;
 qch->beacon_found = sc->beacon_found;
 qch->dfs_state = qlink_utils_dfs_state_cfg2q(sc->dfs_state);
 qch->flags = cpu_to_le32(qlink_utils_chflags_cfg2q(sc->flags));
}
