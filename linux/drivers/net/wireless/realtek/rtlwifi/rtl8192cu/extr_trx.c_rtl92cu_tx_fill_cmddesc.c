
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le32 ;
typedef int __le16 ;


 int COMP_CMD ;
 int DBG_LOUD ;
 int DESC_RATE1M ;
 int QSLT_BEACON ;
 int RTL_TX_DESC_SIZE ;
 int RTL_TX_HEADER_SIZE ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int ) ;
 int ieee80211_is_data_qos (int ) ;
 int memset (void*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int set_tx_desc_first_seg (int *,int) ;
 int set_tx_desc_hwseq_en (int *,int) ;
 int set_tx_desc_last_seg (int *,int) ;
 int set_tx_desc_linip (int *,int ) ;
 int set_tx_desc_macid (int *,int ) ;
 int set_tx_desc_offset (int *,int) ;
 int set_tx_desc_own (int *,int) ;
 int set_tx_desc_pkt_id (int *,int) ;
 int set_tx_desc_pkt_size (int *,int ) ;
 int set_tx_desc_queue_sel (int *,int ) ;
 int set_tx_desc_rate_id (int *,int) ;
 int set_tx_desc_seq (int *,int ) ;
 int set_tx_desc_tx_rate (int *,int ) ;
 int set_tx_desc_use_rate (int *,int) ;

void rtl92cu_tx_fill_cmddesc(struct ieee80211_hw *hw,
        u8 *pdesc8, bool firstseg,
        bool lastseg, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 fw_queue = QSLT_BEACON;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
 __le16 fc = hdr->frame_control;
 __le32 *pdesc = (__le32 *)pdesc8;

 memset((void *)pdesc, 0, RTL_TX_HEADER_SIZE);
 if (firstseg)
  set_tx_desc_offset(pdesc, RTL_TX_HEADER_SIZE);
 set_tx_desc_tx_rate(pdesc, DESC_RATE1M);
 set_tx_desc_seq(pdesc, 0);
 set_tx_desc_linip(pdesc, 0);
 set_tx_desc_queue_sel(pdesc, fw_queue);
 set_tx_desc_first_seg(pdesc, 1);
 set_tx_desc_last_seg(pdesc, 1);
 set_tx_desc_rate_id(pdesc, 7);
 set_tx_desc_macid(pdesc, 0);
 set_tx_desc_own(pdesc, 1);
 set_tx_desc_pkt_size(pdesc, (u16)skb->len);
 set_tx_desc_first_seg(pdesc, 1);
 set_tx_desc_last_seg(pdesc, 1);
 set_tx_desc_offset(pdesc, 0x20);
 set_tx_desc_use_rate(pdesc, 1);
 if (!ieee80211_is_data_qos(fc)) {
  set_tx_desc_hwseq_en(pdesc, 1);
  set_tx_desc_pkt_id(pdesc, 8);
 }
 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD, "H2C Tx Cmd Content",
        pdesc, RTL_TX_DESC_SIZE);
}
