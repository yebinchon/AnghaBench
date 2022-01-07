
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_6__ {int irq_th_lock; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; size_t entries; int queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* fill_tx_cmddesc ) (struct ieee80211_hw*,size_t*,int,int,struct sk_buff*) ;} ;


 size_t TXCMD_QUEUE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 size_t skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ieee80211_hw*,size_t*,int,int,struct sk_buff*) ;

__attribute__((used)) static bool _rtl92s_cmd_send_packet(struct ieee80211_hw *hw,
  struct sk_buff *skb, u8 last)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring;
 struct rtl_tx_desc *pdesc;
 unsigned long flags;
 u8 idx = 0;

 ring = &rtlpci->tx_ring[TXCMD_QUEUE];

 spin_lock_irqsave(&rtlpriv->locks.irq_th_lock, flags);

 idx = (ring->idx + skb_queue_len(&ring->queue)) % ring->entries;
 pdesc = &ring->desc[idx];
 rtlpriv->cfg->ops->fill_tx_cmddesc(hw, (u8 *)pdesc, 1, 1, skb);
 __skb_queue_tail(&ring->queue, skb);

 spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);

 return 1;
}
