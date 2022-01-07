
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tx_desc_88e {int dummy; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rtl_tcb_desc {int use_driver_rate; scalar_t__ packet_bw; scalar_t__ mac_id; scalar_t__ ratr_index; scalar_t__ disable_ratefallback; scalar_t__ tx_enable_sw_calc_duration; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int rts_rate; int rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int hw_rate; scalar_t__ empkt_num; } ;
struct TYPE_4__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct rtl_pci {int pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ earlymode_enable; } ;
struct TYPE_6__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ control; } ;
struct TYPE_5__ {int cap; int ampdu_density; } ;
struct ieee80211_sta {TYPE_2__ ht_cap; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
typedef int __le16 ;


 int COMP_SEND ;
 int DBG_TRACE ;
 int DESC92C_RATE54M ;
 int DESC92C_RATEMCS0 ;
 scalar_t__ EM_HDR_LEN ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 int IEEE80211_FCTL_MOREFRAGS ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_SCTL_FRAG ;
 int IEEE80211_SCTL_SEQ ;
 int IEEE80211_TX_CTL_AMPDU ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PCI_DMA_TODEVICE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ USB_HWDESC_HEADER_LEN ;




 int _rtl88ee_map_hwqueue_to_fwqueue (struct sk_buff*,int) ;
 int clear_pci_tx_desc_content (int *,int) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_ctl (int) ;
 scalar_t__ ieee80211_is_data_qos (int) ;
 scalar_t__ ieee80211_is_nullfunc (int) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,scalar_t__,unsigned int,int ) ;
 int rtl88e_dm_set_tx_ant_by_tx_info (struct ieee80211_hw*,int*,scalar_t__) ;
 int rtl88ee_insert_emcontent (struct rtl_tcb_desc*,int *) ;
 int rtl_get_tcb_desc (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int set_tx_desc_agg_enable (int *,int) ;
 int set_tx_desc_ampdu_density (int *,int) ;
 int set_tx_desc_bmc (int *,int) ;
 int set_tx_desc_cts2self (int *,int) ;
 int set_tx_desc_data_bw (int *,int) ;
 int set_tx_desc_data_rate_fb_limit (int *,int) ;
 int set_tx_desc_data_shortgi (int *,int) ;
 int set_tx_desc_disable_fb (int *,int) ;
 int set_tx_desc_first_seg (int *,int) ;
 int set_tx_desc_htc (int *,int) ;
 int set_tx_desc_hw_rts_enable (int *,int ) ;
 int set_tx_desc_hwseq_en (int *,int) ;
 int set_tx_desc_last_seg (int *,int) ;
 int set_tx_desc_linip (int *,int ) ;
 int set_tx_desc_macid (int *,scalar_t__) ;
 int set_tx_desc_max_agg_num (int *,int) ;
 int set_tx_desc_more_frag (int *,int) ;
 int set_tx_desc_nav_use_hdr (int *,int) ;
 int set_tx_desc_offset (int *,scalar_t__) ;
 int set_tx_desc_pkt_offset (int *,int) ;
 int set_tx_desc_pkt_size (int *,int) ;
 int set_tx_desc_qos (int *,int) ;
 int set_tx_desc_queue_sel (int *,int) ;
 int set_tx_desc_rate_id (int *,scalar_t__) ;
 int set_tx_desc_rdg_enable (int *,int) ;
 int set_tx_desc_rts_bw (int *,int ) ;
 int set_tx_desc_rts_enable (int *,int) ;
 int set_tx_desc_rts_rate (int *,int ) ;
 int set_tx_desc_rts_rate_fb_limit (int *,int) ;
 int set_tx_desc_rts_sc (int *,int ) ;
 int set_tx_desc_rts_short (int *,int) ;
 int set_tx_desc_rts_stbc (int *,int) ;
 int set_tx_desc_sec_type (int *,int) ;
 int set_tx_desc_seq (int *,int) ;
 int set_tx_desc_tx_buffer_address (int *,int ) ;
 int set_tx_desc_tx_buffer_size (int *,int) ;
 int set_tx_desc_tx_rate (int *,int ) ;
 int set_tx_desc_tx_sub_carrier (int *,int) ;
 int set_tx_desc_use_rate (int *,int) ;
 int skb_push (struct sk_buff*,scalar_t__) ;

void rtl88ee_tx_fill_desc(struct ieee80211_hw *hw,
     struct ieee80211_hdr *hdr, u8 *pdesc8,
     u8 *txbd, struct ieee80211_tx_info *info,
     struct ieee80211_sta *sta,
     struct sk_buff *skb,
     u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)

{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u16 seq_number;
 __le16 fc = hdr->frame_control;
 unsigned int buf_len = 0;
 unsigned int skb_len = skb->len;
 u8 fw_qsel = _rtl88ee_map_hwqueue_to_fwqueue(skb, hw_queue);
 bool firstseg = ((hdr->seq_ctrl &
       cpu_to_le16(IEEE80211_SCTL_FRAG)) == 0);
 bool lastseg = ((hdr->frame_control &
      cpu_to_le16(IEEE80211_FCTL_MOREFRAGS)) == 0);
 dma_addr_t mapping;
 u8 bw_40 = 0;
 u8 short_gi = 0;
 __le32 *pdesc = (u32 *)pdesc8;

 if (mac->opmode == NL80211_IFTYPE_STATION) {
  bw_40 = mac->bw_40;
 } else if (mac->opmode == NL80211_IFTYPE_AP ||
  mac->opmode == NL80211_IFTYPE_ADHOC) {
  if (sta)
   bw_40 = sta->ht_cap.cap &
    IEEE80211_HT_CAP_SUP_WIDTH_20_40;
 }
 seq_number = (le16_to_cpu(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
 rtl_get_tcb_desc(hw, info, sta, skb, ptcb_desc);

 if (rtlhal->earlymode_enable) {
  skb_push(skb, EM_HDR_LEN);
  memset(skb->data, 0, EM_HDR_LEN);
 }
 buf_len = skb->len;
 mapping = pci_map_single(rtlpci->pdev, skb->data, skb->len,
     PCI_DMA_TODEVICE);
 if (pci_dma_mapping_error(rtlpci->pdev, mapping)) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "DMA mapping error\n");
  return;
 }
 clear_pci_tx_desc_content(pdesc, sizeof(struct tx_desc_88e));
 if (ieee80211_is_nullfunc(fc) || ieee80211_is_ctl(fc)) {
  firstseg = 1;
  lastseg = 1;
 }
 if (firstseg) {
  if (rtlhal->earlymode_enable) {
   set_tx_desc_pkt_offset(pdesc, 1);
   set_tx_desc_offset(pdesc, USB_HWDESC_HEADER_LEN +
        EM_HDR_LEN);
   if (ptcb_desc->empkt_num) {
    RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
      "Insert 8 byte.pTcb->EMPktNum:%d\n",
       ptcb_desc->empkt_num);
    rtl88ee_insert_emcontent(ptcb_desc,
        (__le32 *)(skb->data));
   }
  } else {
   set_tx_desc_offset(pdesc, USB_HWDESC_HEADER_LEN);
  }

  ptcb_desc->use_driver_rate = 1;
  set_tx_desc_tx_rate(pdesc, ptcb_desc->hw_rate);
  if (ptcb_desc->hw_rate > DESC92C_RATEMCS0)
   short_gi = (ptcb_desc->use_shortgi) ? 1 : 0;
  else
   short_gi = (ptcb_desc->use_shortpreamble) ? 1 : 0;

  set_tx_desc_data_shortgi(pdesc, short_gi);

  if (info->flags & IEEE80211_TX_CTL_AMPDU) {
   set_tx_desc_agg_enable(pdesc, 1);
   set_tx_desc_max_agg_num(pdesc, 0x14);
  }
  set_tx_desc_seq(pdesc, seq_number);
  set_tx_desc_rts_enable(pdesc, ((ptcb_desc->rts_enable &&
      !ptcb_desc->cts_enable) ? 1 : 0));
  set_tx_desc_hw_rts_enable(pdesc, 0);
  set_tx_desc_cts2self(pdesc, ((ptcb_desc->cts_enable) ? 1 : 0));
  set_tx_desc_rts_stbc(pdesc, ((ptcb_desc->rts_stbc) ? 1 : 0));

  set_tx_desc_rts_rate(pdesc, ptcb_desc->rts_rate);
  set_tx_desc_rts_bw(pdesc, 0);
  set_tx_desc_rts_sc(pdesc, ptcb_desc->rts_sc);
  set_tx_desc_rts_short(pdesc,
   ((ptcb_desc->rts_rate <= DESC92C_RATE54M) ?
   (ptcb_desc->rts_use_shortpreamble ? 1 : 0) :
   (ptcb_desc->rts_use_shortgi ? 1 : 0)));

  if (ptcb_desc->tx_enable_sw_calc_duration)
   set_tx_desc_nav_use_hdr(pdesc, 1);

  if (bw_40) {
   if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) {
    set_tx_desc_data_bw(pdesc, 1);
    set_tx_desc_tx_sub_carrier(pdesc, 3);
   } else {
    set_tx_desc_data_bw(pdesc, 0);
    set_tx_desc_tx_sub_carrier(pdesc,
          mac->cur_40_prime_sc);
   }
  } else {
   set_tx_desc_data_bw(pdesc, 0);
   set_tx_desc_tx_sub_carrier(pdesc, 0);
  }

  set_tx_desc_linip(pdesc, 0);
  set_tx_desc_pkt_size(pdesc, (u16)skb_len);
  if (sta) {
   u8 ampdu_density = sta->ht_cap.ampdu_density;
   set_tx_desc_ampdu_density(pdesc, ampdu_density);
  }
  if (info->control.hw_key) {
   struct ieee80211_key_conf *keyconf;

   keyconf = info->control.hw_key;
   switch (keyconf->cipher) {
   case 128:
   case 129:
   case 130:
    set_tx_desc_sec_type(pdesc, 0x1);
    break;
   case 131:
    set_tx_desc_sec_type(pdesc, 0x3);
    break;
   default:
    set_tx_desc_sec_type(pdesc, 0x0);
    break;

   }
  }

  set_tx_desc_queue_sel(pdesc, fw_qsel);
  set_tx_desc_data_rate_fb_limit(pdesc, 0x1F);
  set_tx_desc_rts_rate_fb_limit(pdesc, 0xF);
  set_tx_desc_disable_fb(pdesc, ptcb_desc->disable_ratefallback ?
           1 : 0);
  set_tx_desc_use_rate(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);





  if (!ptcb_desc->use_driver_rate) {


  }
  if (ieee80211_is_data_qos(fc)) {
   if (mac->rdg_en) {
    RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
     "Enable RDG function.\n");
    set_tx_desc_rdg_enable(pdesc, 1);
    set_tx_desc_htc(pdesc, 1);
   }
  }
 }

 set_tx_desc_first_seg(pdesc, (firstseg ? 1 : 0));
 set_tx_desc_last_seg(pdesc, (lastseg ? 1 : 0));
 set_tx_desc_tx_buffer_size(pdesc, (u16)buf_len);
 set_tx_desc_tx_buffer_address(pdesc, mapping);
 if (rtlpriv->dm.useramask) {
  set_tx_desc_rate_id(pdesc, ptcb_desc->ratr_index);
  set_tx_desc_macid(pdesc, ptcb_desc->mac_id);
 } else {
  set_tx_desc_rate_id(pdesc, 0xC + ptcb_desc->ratr_index);
  set_tx_desc_macid(pdesc, ptcb_desc->ratr_index);
 }
 if (ieee80211_is_data_qos(fc))
  set_tx_desc_qos(pdesc, 1);

 if (!ieee80211_is_data_qos(fc))
  set_tx_desc_hwseq_en(pdesc, 1);
 set_tx_desc_more_frag(pdesc, (lastseg ? 0 : 1));
 if (is_multicast_ether_addr(ieee80211_get_DA(hdr)) ||
     is_broadcast_ether_addr(ieee80211_get_DA(hdr))) {
  set_tx_desc_bmc(pdesc, 1);
 }

 rtl88e_dm_set_tx_ant_by_tx_info(hw, pdesc8, ptcb_desc->mac_id);
 RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}
