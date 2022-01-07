
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; int data; scalar_t__ cb; } ;
struct rtl_tcb_desc {scalar_t__ cmd_or_init; int last_inipkt; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int pdev; } ;
struct rtl_hal {int h2c_txcmd_seq; } ;
struct ieee80211_hw {int dummy; } ;
typedef int dma_addr_t ;


 int CLEAR_PCI_TX_DESC_CONTENT (int *,int ) ;
 int COMP_SEND ;
 int DBG_TRACE ;
 scalar_t__ DESC_PACKET_TYPE_INIT ;
 int PCI_DMA_TODEVICE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SET_BITS_TO_LE_4BYTE (int ,int,int,int ) ;
 int SET_TX_DESC_FIRST_SEG (int *,int) ;
 int SET_TX_DESC_LAST_SEG (int *,int) ;
 int SET_TX_DESC_LINIP (int *,int ) ;
 int SET_TX_DESC_OFFSET (int *,int) ;
 int SET_TX_DESC_OWN (int *,int) ;
 int SET_TX_DESC_PKT_SIZE (int *,int ) ;
 int SET_TX_DESC_QUEUE_SEL (int *,int) ;
 int SET_TX_DESC_TX_BUFFER_ADDRESS (int *,int ) ;
 int SET_TX_DESC_TX_BUFFER_SIZE (int *,int ) ;
 int TX_CMDDESC_SIZE_RTL8192S ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,scalar_t__,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int wmb () ;

void rtl92se_tx_fill_cmddesc(struct ieee80211_hw *hw, u8 *pdesc,
 bool firstseg, bool lastseg, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_tcb_desc *tcb_desc = (struct rtl_tcb_desc *)(skb->cb);

 dma_addr_t mapping = pci_map_single(rtlpci->pdev, skb->data, skb->len,
   PCI_DMA_TODEVICE);

 if (pci_dma_mapping_error(rtlpci->pdev, mapping)) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "DMA mapping error\n");
  return;
 }

 CLEAR_PCI_TX_DESC_CONTENT(pdesc, TX_CMDDESC_SIZE_RTL8192S);


 if (tcb_desc->cmd_or_init == DESC_PACKET_TYPE_INIT) {

  SET_TX_DESC_LINIP(pdesc, tcb_desc->last_inipkt);


  SET_TX_DESC_FIRST_SEG(pdesc, 1);
  SET_TX_DESC_LAST_SEG(pdesc, 1);


  SET_TX_DESC_PKT_SIZE(pdesc, (u16)(skb->len));
  SET_TX_DESC_TX_BUFFER_SIZE(pdesc, (u16)(skb->len));
  SET_TX_DESC_TX_BUFFER_ADDRESS(pdesc, mapping);

  wmb();
  SET_TX_DESC_OWN(pdesc, 1);
 } else {

  SET_TX_DESC_FIRST_SEG(pdesc, 1);
  SET_TX_DESC_LAST_SEG(pdesc, 1);

  SET_TX_DESC_OFFSET(pdesc, 0x20);


  SET_TX_DESC_PKT_SIZE(pdesc, (u16)(skb->len));

  SET_TX_DESC_QUEUE_SEL(pdesc, 0x13);

  SET_BITS_TO_LE_4BYTE(skb->data, 24, 7, rtlhal->h2c_txcmd_seq);

  SET_TX_DESC_TX_BUFFER_SIZE(pdesc, (u16)(skb->len));
  SET_TX_DESC_TX_BUFFER_ADDRESS(pdesc, mapping);

  wmb();
  SET_TX_DESC_OWN(pdesc, 1);

 }
}
