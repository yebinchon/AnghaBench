
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl_tcb_desc {int last_inipkt; int cmd_or_init; int queue_index; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int DESC_PACKET_TYPE_INIT ;
 scalar_t__ MAX_FIRMWARE_CODE_SIZE ;
 int TPPOLL_CQ ;
 int TP_POLL ;
 int TXCMD_QUEUE ;
 int _rtl92s_cmd_send_packet (struct ieee80211_hw*,struct sk_buff*,int) ;
 int _rtl92s_fw_set_rqpn (struct ieee80211_hw*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int pr_err (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int skb_put_data (struct sk_buff*,int*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static bool _rtl92s_firmware_downloadcode(struct ieee80211_hw *hw,
  u8 *code_virtual_address, u32 buffer_len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct sk_buff *skb;
 struct rtl_tcb_desc *tcb_desc;
 u16 frag_threshold = MAX_FIRMWARE_CODE_SIZE;
 u16 frag_length, frag_offset = 0;
 u16 extra_descoffset = 0;
 u8 last_inipkt = 0;

 _rtl92s_fw_set_rqpn(hw);

 if (buffer_len >= MAX_FIRMWARE_CODE_SIZE) {
  pr_err("Size over FIRMWARE_CODE_SIZE!\n");
  return 0;
 }

 extra_descoffset = 0;

 do {
  if ((buffer_len - frag_offset) > frag_threshold) {
   frag_length = frag_threshold + extra_descoffset;
  } else {
   frag_length = (u16)(buffer_len - frag_offset +
         extra_descoffset);
   last_inipkt = 1;
  }



  skb = dev_alloc_skb(frag_length);
  if (!skb)
   return 0;
  skb_reserve(skb, extra_descoffset);
  skb_put_data(skb, code_virtual_address + frag_offset,
        (u32)(frag_length - extra_descoffset));

  tcb_desc = (struct rtl_tcb_desc *)(skb->cb);
  tcb_desc->queue_index = TXCMD_QUEUE;
  tcb_desc->cmd_or_init = DESC_PACKET_TYPE_INIT;
  tcb_desc->last_inipkt = last_inipkt;

  _rtl92s_cmd_send_packet(hw, skb, last_inipkt);

  frag_offset += (frag_length - extra_descoffset);

 } while (frag_offset < buffer_len);

 rtl_write_byte(rtlpriv, TP_POLL, TPPOLL_CQ);

 return 1 ;
}
