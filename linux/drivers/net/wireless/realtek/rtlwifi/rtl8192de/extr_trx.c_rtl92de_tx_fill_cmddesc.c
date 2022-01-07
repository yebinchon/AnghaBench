
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int pdev; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int dma_addr_t ;
typedef int __le16 ;


 scalar_t__ BAND_ON_5G ;
 int CLEAR_PCI_TX_DESC_CONTENT (int *,int ) ;
 int COMP_CMD ;
 int COMP_SEND ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int DESC_RATE1M ;
 int DESC_RATE6M ;
 int PCI_DMA_TODEVICE ;
 int QSLT_BEACON ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SET_TX_DESC_FIRST_SEG (int *,int) ;
 int SET_TX_DESC_HWSEQ_EN (int *,int) ;
 int SET_TX_DESC_LAST_SEG (int *,int) ;
 int SET_TX_DESC_LINIP (int *,int ) ;
 int SET_TX_DESC_MACID (int *,int ) ;
 int SET_TX_DESC_OFFSET (int *,int) ;
 int SET_TX_DESC_OWN (int *,int) ;
 int SET_TX_DESC_PKT_ID (int *,int) ;
 int SET_TX_DESC_PKT_SIZE (int *,int ) ;
 int SET_TX_DESC_QUEUE_SEL (int *,int ) ;
 int SET_TX_DESC_RATE_ID (int *,int) ;
 int SET_TX_DESC_SEQ (int *,int ) ;
 int SET_TX_DESC_TX_BUFFER_ADDRESS (int *,int ) ;
 int SET_TX_DESC_TX_BUFFER_SIZE (int *,int ) ;
 int SET_TX_DESC_TX_RATE (int *,int ) ;
 int SET_TX_DESC_USE_RATE (int *,int) ;
 int TX_DESC_SIZE ;
 int USB_HWDESC_HEADER_LEN ;
 int ieee80211_is_data_qos (int ) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,scalar_t__,scalar_t__,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int wmb () ;

void rtl92de_tx_fill_cmddesc(struct ieee80211_hw *hw,
        u8 *pdesc, bool firstseg,
        bool lastseg, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtlpriv);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u8 fw_queue = QSLT_BEACON;
 dma_addr_t mapping = pci_map_single(rtlpci->pdev,
      skb->data, skb->len, PCI_DMA_TODEVICE);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
 __le16 fc = hdr->frame_control;

 if (pci_dma_mapping_error(rtlpci->pdev, mapping)) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "DMA mapping error\n");
  return;
 }
 CLEAR_PCI_TX_DESC_CONTENT(pdesc, TX_DESC_SIZE);
 if (firstseg)
  SET_TX_DESC_OFFSET(pdesc, USB_HWDESC_HEADER_LEN);




 if (rtlhal->current_bandtype == BAND_ON_5G) {
  SET_TX_DESC_TX_RATE(pdesc, DESC_RATE6M);
 } else {
  SET_TX_DESC_TX_RATE(pdesc, DESC_RATE1M);
 }
 SET_TX_DESC_SEQ(pdesc, 0);
 SET_TX_DESC_LINIP(pdesc, 0);
 SET_TX_DESC_QUEUE_SEL(pdesc, fw_queue);
 SET_TX_DESC_FIRST_SEG(pdesc, 1);
 SET_TX_DESC_LAST_SEG(pdesc, 1);
 SET_TX_DESC_TX_BUFFER_SIZE(pdesc, (u16)skb->len);
 SET_TX_DESC_TX_BUFFER_ADDRESS(pdesc, mapping);
 SET_TX_DESC_RATE_ID(pdesc, 7);
 SET_TX_DESC_MACID(pdesc, 0);
 SET_TX_DESC_PKT_SIZE(pdesc, (u16) (skb->len));
 SET_TX_DESC_FIRST_SEG(pdesc, 1);
 SET_TX_DESC_LAST_SEG(pdesc, 1);
 SET_TX_DESC_OFFSET(pdesc, 0x20);
 SET_TX_DESC_USE_RATE(pdesc, 1);

 if (!ieee80211_is_data_qos(fc) && ppsc->fwctrl_lps) {
  SET_TX_DESC_HWSEQ_EN(pdesc, 1);
  SET_TX_DESC_PKT_ID(pdesc, 8);
 }

 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
        "H2C Tx Cmd Content", pdesc, TX_DESC_SIZE);
 wmb();
 SET_TX_DESC_OWN(pdesc, 1);
}
