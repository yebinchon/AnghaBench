
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
typedef int __le16 ;


 int COMP_CMD ;
 int COMP_SEND ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int DESC92C_RATE1M ;
 int PCI_DMA_TODEVICE ;
 int QSLT_BEACON ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int TX_DESC_SIZE ;
 int USB_HWDESC_HEADER_LEN ;
 int clear_pci_tx_desc_content (int *,int ) ;
 int ieee80211_is_data_qos (int ) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,scalar_t__,scalar_t__,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int set_tx_desc_first_seg (int *,int) ;
 int set_tx_desc_hwseq_en (int *,int) ;
 int set_tx_desc_last_seg (int *,int) ;
 int set_tx_desc_linip (int *,int ) ;
 int set_tx_desc_macid (int *,int ) ;
 int set_tx_desc_offset (int *,int) ;
 int set_tx_desc_own (int *,int) ;
 int set_tx_desc_pkt_size (int *,int ) ;
 int set_tx_desc_queue_sel (int *,int ) ;
 int set_tx_desc_rate_id (int *,int) ;
 int set_tx_desc_seq (int *,int ) ;
 int set_tx_desc_tx_buffer_address (int *,int ) ;
 int set_tx_desc_tx_buffer_size (int *,int ) ;
 int set_tx_desc_tx_rate (int *,int ) ;
 int set_tx_desc_use_rate (int *,int) ;

void rtl88ee_tx_fill_cmddesc(struct ieee80211_hw *hw,
        u8 *pdesc8, bool firstseg,
        bool lastseg, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u8 fw_queue = QSLT_BEACON;
 __le32 *pdesc = (__le32 *)pdesc8;

 dma_addr_t mapping = pci_map_single(rtlpci->pdev,
         skb->data, skb->len,
         PCI_DMA_TODEVICE);

 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
 __le16 fc = hdr->frame_control;

 if (pci_dma_mapping_error(rtlpci->pdev, mapping)) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "DMA mapping error\n");
  return;
 }
 clear_pci_tx_desc_content(pdesc, TX_DESC_SIZE);

 if (firstseg)
  set_tx_desc_offset(pdesc, USB_HWDESC_HEADER_LEN);

 set_tx_desc_tx_rate(pdesc, DESC92C_RATE1M);

 set_tx_desc_seq(pdesc, 0);

 set_tx_desc_linip(pdesc, 0);

 set_tx_desc_queue_sel(pdesc, fw_queue);

 set_tx_desc_first_seg(pdesc, 1);
 set_tx_desc_last_seg(pdesc, 1);

 set_tx_desc_tx_buffer_size(pdesc, (u16)(skb->len));

 set_tx_desc_tx_buffer_address(pdesc, mapping);

 set_tx_desc_rate_id(pdesc, 7);
 set_tx_desc_macid(pdesc, 0);

 set_tx_desc_own(pdesc, 1);

 set_tx_desc_pkt_size(pdesc, (u16)(skb->len));

 set_tx_desc_first_seg(pdesc, 1);
 set_tx_desc_last_seg(pdesc, 1);

 set_tx_desc_offset(pdesc, 0x20);

 set_tx_desc_use_rate(pdesc, 1);

 if (!ieee80211_is_data_qos(fc))
  set_tx_desc_hwseq_en(pdesc, 1);

 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
        "H2C Tx Cmd Content\n",
        pdesc, TX_DESC_SIZE);
}
