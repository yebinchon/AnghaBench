
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_pci {TYPE_1__* tx_ring; int * txringcount; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ buffer_desc; scalar_t__ desc; } ;


 int RTL_PCI_MAX_RX_QUEUE ;
 int RTL_PCI_MAX_TX_QUEUE_COUNT ;
 int _rtl_pci_free_rx_ring (struct ieee80211_hw*,int) ;
 int _rtl_pci_free_tx_ring (struct ieee80211_hw*,int) ;
 int _rtl_pci_init_rx_ring (struct ieee80211_hw*,int) ;
 int _rtl_pci_init_tx_ring (struct ieee80211_hw*,int,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;

__attribute__((used)) static int _rtl_pci_init_trx_ring(struct ieee80211_hw *hw)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 int ret;
 int i, rxring_idx;




 for (rxring_idx = 0; rxring_idx < RTL_PCI_MAX_RX_QUEUE; rxring_idx++) {
  ret = _rtl_pci_init_rx_ring(hw, rxring_idx);
  if (ret)
   return ret;
 }

 for (i = 0; i < RTL_PCI_MAX_TX_QUEUE_COUNT; i++) {
  ret = _rtl_pci_init_tx_ring(hw, i, rtlpci->txringcount[i]);
  if (ret)
   goto err_free_rings;
 }

 return 0;

err_free_rings:
 for (rxring_idx = 0; rxring_idx < RTL_PCI_MAX_RX_QUEUE; rxring_idx++)
  _rtl_pci_free_rx_ring(hw, rxring_idx);

 for (i = 0; i < RTL_PCI_MAX_TX_QUEUE_COUNT; i++)
  if (rtlpci->tx_ring[i].desc ||
      rtlpci->tx_ring[i].buffer_desc)
   _rtl_pci_free_tx_ring(hw, i);

 return 1;
}
