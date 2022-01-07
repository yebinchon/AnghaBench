
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rtl_80211_hdr_3addr {void* seq_ctl; } ;
struct ieee80211_device {short softmac_features; int* seq_ctrl; int dev; int (* softmac_hard_start_xmit ) (struct sk_buff*,int ) ;int basic_rate; int (* softmac_data_hard_start_xmit ) (struct sk_buff*,int ,int ) ;} ;


 short IEEE_SOFTMAC_SINGLE_QUEUE ;
 void* cpu_to_le16 (int) ;
 int netif_trans_update (int ) ;
 int stub1 (struct sk_buff*,int ,int ) ;
 int stub2 (struct sk_buff*,int ) ;

__attribute__((used)) static inline void
softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee)
{
 short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
 struct rtl_80211_hdr_3addr *header =
  (struct rtl_80211_hdr_3addr *)skb->data;

 if (single) {
  header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

  if (ieee->seq_ctrl[0] == 0xFFF)
   ieee->seq_ctrl[0] = 0;
  else
   ieee->seq_ctrl[0]++;


  netif_trans_update(ieee->dev);
  ieee->softmac_data_hard_start_xmit(skb, ieee->dev, ieee->basic_rate);
 } else {
  header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

  if (ieee->seq_ctrl[0] == 0xFFF)
   ieee->seq_ctrl[0] = 0;
  else
   ieee->seq_ctrl[0]++;

  ieee->softmac_hard_start_xmit(skb, ieee->dev);
 }

}
