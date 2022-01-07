
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct TYPE_15__ {int waitq_lock; } ;
struct TYPE_14__ {scalar_t__ rfpwr_state; } ;
struct TYPE_11__ {scalar_t__ switch_in_process; } ;
struct TYPE_10__ {scalar_t__ supp_phymode_switch; } ;
struct TYPE_9__ {int earlymode_enable; } ;
struct rtl_priv {TYPE_8__* intf_ops; TYPE_7__ locks; TYPE_6__ psc; TYPE_5__* buddy_priv; TYPE_3__ easy_concurrent_ctl; TYPE_2__ dm; TYPE_1__ rtlhal; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_mac {int * skb_waitq; int act_scanning; } ;
struct rtl_hal {scalar_t__ max_earlymode_num; } ;
struct rtl8192_tx_ring {scalar_t__ entries; int queue; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_16__ {int (* adapter_tx ) (struct ieee80211_hw*,int *,struct sk_buff*,struct rtl_tcb_desc*) ;} ;
struct TYPE_12__ {scalar_t__ switch_in_process; } ;
struct TYPE_13__ {TYPE_4__ easy_concurrent_ctl; } ;


 scalar_t__ ERFON ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int _rtl_update_earlymode_info (struct ieee80211_hw*,struct sk_buff*,struct rtl_tcb_desc*,int) ;
 size_t* ac_to_hwq ;
 int memset (struct rtl_tcb_desc*,int ,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 size_t rtl_tid_to_ac (int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ieee80211_hw*,int *,struct sk_buff*,struct rtl_tcb_desc*) ;

__attribute__((used)) static void _rtl_pci_tx_chk_waitq(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct sk_buff *skb = ((void*)0);
 struct ieee80211_tx_info *info = ((void*)0);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 int tid;

 if (!rtlpriv->rtlhal.earlymode_enable)
  return;

 if (rtlpriv->dm.supp_phymode_switch &&
     (rtlpriv->easy_concurrent_ctl.switch_in_process ||
     (rtlpriv->buddy_priv &&
     rtlpriv->buddy_priv->easy_concurrent_ctl.switch_in_process)))
  return;

 for (tid = 7; tid >= 0; tid--) {
  u8 hw_queue = ac_to_hwq[rtl_tid_to_ac(tid)];
  struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[hw_queue];

  while (!mac->act_scanning &&
         rtlpriv->psc.rfpwr_state == ERFON) {
   struct rtl_tcb_desc tcb_desc;

   memset(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));

   spin_lock(&rtlpriv->locks.waitq_lock);
   if (!skb_queue_empty(&mac->skb_waitq[tid]) &&
       (ring->entries - skb_queue_len(&ring->queue) >
        rtlhal->max_earlymode_num)) {
    skb = skb_dequeue(&mac->skb_waitq[tid]);
   } else {
    spin_unlock(&rtlpriv->locks.waitq_lock);
    break;
   }
   spin_unlock(&rtlpriv->locks.waitq_lock);




   info = IEEE80211_SKB_CB(skb);
   if (info->flags & IEEE80211_TX_CTL_AMPDU)
    _rtl_update_earlymode_info(hw, skb,
          &tcb_desc, tid);

   rtlpriv->intf_ops->adapter_tx(hw, ((void*)0), skb, &tcb_desc);
  }
 }
}
