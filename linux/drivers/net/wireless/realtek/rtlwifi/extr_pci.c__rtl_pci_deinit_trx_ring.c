
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RTL_PCI_MAX_RX_QUEUE ;
 scalar_t__ RTL_PCI_MAX_TX_QUEUE_COUNT ;
 int _rtl_pci_free_rx_ring (struct ieee80211_hw*,scalar_t__) ;
 int _rtl_pci_free_tx_ring (struct ieee80211_hw*,scalar_t__) ;

__attribute__((used)) static int _rtl_pci_deinit_trx_ring(struct ieee80211_hw *hw)
{
 u32 i, rxring_idx;


 for (rxring_idx = 0; rxring_idx < RTL_PCI_MAX_RX_QUEUE; rxring_idx++)
  _rtl_pci_free_rx_ring(hw, rxring_idx);


 for (i = 0; i < RTL_PCI_MAX_TX_QUEUE_COUNT; i++)
  _rtl_pci_free_tx_ring(hw, i);

 return 0;
}
