
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_priv {TYPE_3__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {TYPE_1__* tx_ring; int pdev; } ;
struct ieee80211_hw {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_desc ) (struct ieee80211_hw*,int *,int,int ,int *) ;} ;
struct TYPE_4__ {unsigned int entries; int queue; scalar_t__ idx; void* dma; struct rtl_tx_desc* desc; scalar_t__ cur_tx_wp; scalar_t__ cur_tx_rp; void* buffer_desc_dma; struct rtl_tx_buffer_desc* buffer_desc; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int ENOMEM ;
 int HW_DESC_TX_NEXTDESC_ADDR ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,unsigned int,struct rtl_tx_desc*) ;
 void* pci_zalloc_consistent (int ,int,void**) ;
 int pr_err (char*,unsigned int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_queue_head_init (int *) ;
 int stub1 (struct ieee80211_hw*,int *,int,int ,int *) ;

__attribute__((used)) static int _rtl_pci_init_tx_ring(struct ieee80211_hw *hw,
     unsigned int prio, unsigned int entries)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tx_buffer_desc *buffer_desc;
 struct rtl_tx_desc *desc;
 dma_addr_t buffer_desc_dma, desc_dma;
 u32 nextdescaddress;
 int i;


 if (rtlpriv->use_new_trx_flow) {
  buffer_desc =
     pci_zalloc_consistent(rtlpci->pdev,
      sizeof(*buffer_desc) * entries,
      &buffer_desc_dma);

  if (!buffer_desc || (unsigned long)buffer_desc & 0xFF) {
   pr_err("Cannot allocate TX ring (prio = %d)\n",
          prio);
   return -ENOMEM;
  }

  rtlpci->tx_ring[prio].buffer_desc = buffer_desc;
  rtlpci->tx_ring[prio].buffer_desc_dma = buffer_desc_dma;

  rtlpci->tx_ring[prio].cur_tx_rp = 0;
  rtlpci->tx_ring[prio].cur_tx_wp = 0;
 }


 desc = pci_zalloc_consistent(rtlpci->pdev,
         sizeof(*desc) * entries, &desc_dma);

 if (!desc || (unsigned long)desc & 0xFF) {
  pr_err("Cannot allocate TX ring (prio = %d)\n", prio);
  return -ENOMEM;
 }

 rtlpci->tx_ring[prio].desc = desc;
 rtlpci->tx_ring[prio].dma = desc_dma;

 rtlpci->tx_ring[prio].idx = 0;
 rtlpci->tx_ring[prio].entries = entries;
 skb_queue_head_init(&rtlpci->tx_ring[prio].queue);

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "queue:%d, ring_addr:%p\n",
   prio, desc);


 if (!rtlpriv->use_new_trx_flow) {
  for (i = 0; i < entries; i++) {
   nextdescaddress = (u32)desc_dma +
       ((i + 1) % entries) *
       sizeof(*desc);

   rtlpriv->cfg->ops->set_desc(hw, (u8 *)&desc[i],
          1,
          HW_DESC_TX_NEXTDESC_ADDR,
          (u8 *)&nextdescaddress);
  }
 }
 return 0;
}
