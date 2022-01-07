
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int retry_short; int retry_long; int coverage_class; int rts_threshold; int frag_threshold; } ;
struct sk_buff {int dummy; } ;
struct qtnf_wmac {int bus; int macid; } ;
struct qlink_cmd {int dummy; } ;


 int ENOMEM ;
 int QLINK_CMD_PHY_PARAMS_SET ;
 int QTN_TLV_ID_COVERAGE_CLASS ;
 int QTN_TLV_ID_FRAG_THRESH ;
 int QTN_TLV_ID_LRETRY_LIMIT ;
 int QTN_TLV_ID_RTS_THRESH ;
 int QTN_TLV_ID_SRETRY_LIMIT ;
 int WIPHY_PARAM_COVERAGE_CLASS ;
 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int WIPHY_PARAM_RETRY_LONG ;
 int WIPHY_PARAM_RETRY_SHORT ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 struct wiphy* priv_to_wiphy (struct qtnf_wmac*) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;
 int qtnf_cmd_skb_put_tlv_u32 (struct sk_buff*,int ,int ) ;
 int qtnf_cmd_skb_put_tlv_u8 (struct sk_buff*,int ,int ) ;

int qtnf_cmd_send_update_phy_params(struct qtnf_wmac *mac, u32 changed)
{
 struct wiphy *wiphy = priv_to_wiphy(mac);
 struct sk_buff *cmd_skb;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(mac->macid, 0,
         QLINK_CMD_PHY_PARAMS_SET,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(mac->bus);

 if (changed & WIPHY_PARAM_FRAG_THRESHOLD)
  qtnf_cmd_skb_put_tlv_u32(cmd_skb, QTN_TLV_ID_FRAG_THRESH,
      wiphy->frag_threshold);
 if (changed & WIPHY_PARAM_RTS_THRESHOLD)
  qtnf_cmd_skb_put_tlv_u32(cmd_skb, QTN_TLV_ID_RTS_THRESH,
      wiphy->rts_threshold);
 if (changed & WIPHY_PARAM_COVERAGE_CLASS)
  qtnf_cmd_skb_put_tlv_u8(cmd_skb, QTN_TLV_ID_COVERAGE_CLASS,
     wiphy->coverage_class);

 if (changed & WIPHY_PARAM_RETRY_LONG)
  qtnf_cmd_skb_put_tlv_u8(cmd_skb, QTN_TLV_ID_LRETRY_LIMIT,
     wiphy->retry_long);

 if (changed & WIPHY_PARAM_RETRY_SHORT)
  qtnf_cmd_skb_put_tlv_u8(cmd_skb, QTN_TLV_ID_SRETRY_LIMIT,
     wiphy->retry_short);

 ret = qtnf_cmd_send(mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(mac->bus);

 return ret;
}
