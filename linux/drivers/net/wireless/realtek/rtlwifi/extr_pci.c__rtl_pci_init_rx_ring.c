
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
struct rtl_rx_desc {int dummy; } ;
struct rtl_rx_buffer_desc {int dummy; } ;
struct rtl_priv {TYPE_3__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int rxringcount; TYPE_1__* rx_ring; int pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_desc ) (struct ieee80211_hw*,int*,int,int ,int*) ;} ;
struct TYPE_4__ {struct rtl_rx_desc* desc; scalar_t__ idx; int dma; struct rtl_rx_buffer_desc* buffer_desc; } ;


 int ENOMEM ;
 int HW_DESC_RXERO ;
 int _rtl_pci_init_one_rxdesc (struct ieee80211_hw*,int *,int*,int,int) ;
 void* pci_zalloc_consistent (int ,int,int *) ;
 int pr_err (char*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int*,int,int ,int*) ;

__attribute__((used)) static int _rtl_pci_init_rx_ring(struct ieee80211_hw *hw, int rxring_idx)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;

 if (rtlpriv->use_new_trx_flow) {
  struct rtl_rx_buffer_desc *entry = ((void*)0);

  rtlpci->rx_ring[rxring_idx].buffer_desc =
      pci_zalloc_consistent(rtlpci->pdev,
       sizeof(*rtlpci->rx_ring[rxring_idx].
       buffer_desc) *
       rtlpci->rxringcount,
       &rtlpci->rx_ring[rxring_idx].dma);
  if (!rtlpci->rx_ring[rxring_idx].buffer_desc ||
      (ulong)rtlpci->rx_ring[rxring_idx].buffer_desc & 0xFF) {
   pr_err("Cannot allocate RX ring\n");
   return -ENOMEM;
  }


  rtlpci->rx_ring[rxring_idx].idx = 0;
  for (i = 0; i < rtlpci->rxringcount; i++) {
   entry = &rtlpci->rx_ring[rxring_idx].buffer_desc[i];
   if (!_rtl_pci_init_one_rxdesc(hw, ((void*)0), (u8 *)entry,
            rxring_idx, i))
    return -ENOMEM;
  }
 } else {
  struct rtl_rx_desc *entry = ((void*)0);
  u8 tmp_one = 1;

  rtlpci->rx_ring[rxring_idx].desc =
      pci_zalloc_consistent(rtlpci->pdev,
       sizeof(*rtlpci->rx_ring[rxring_idx].
       desc) * rtlpci->rxringcount,
       &rtlpci->rx_ring[rxring_idx].dma);
  if (!rtlpci->rx_ring[rxring_idx].desc ||
      (unsigned long)rtlpci->rx_ring[rxring_idx].desc & 0xFF) {
   pr_err("Cannot allocate RX ring\n");
   return -ENOMEM;
  }


  rtlpci->rx_ring[rxring_idx].idx = 0;

  for (i = 0; i < rtlpci->rxringcount; i++) {
   entry = &rtlpci->rx_ring[rxring_idx].desc[i];
   if (!_rtl_pci_init_one_rxdesc(hw, ((void*)0), (u8 *)entry,
            rxring_idx, i))
    return -ENOMEM;
  }

  rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, 0,
         HW_DESC_RXERO, &tmp_one);
 }
 return 0;
}
