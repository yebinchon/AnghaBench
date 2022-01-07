
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data; scalar_t__ cb; } ;
struct TYPE_2__ {int c2hcmd_lock; } ;
struct rtl_priv {TYPE_1__ locks; int c2hcmd_queue; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_FW ;
 int DBG_DMESG ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int ,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int rtl_c2h_content_parsing (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl_c2hcmd_launcher(struct ieee80211_hw *hw, int exec)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct sk_buff *skb;
 unsigned long flags;
 int i;

 for (i = 0; i < 200; i++) {

  spin_lock_irqsave(&rtlpriv->locks.c2hcmd_lock, flags);

  skb = __skb_dequeue(&rtlpriv->c2hcmd_queue);

  spin_unlock_irqrestore(&rtlpriv->locks.c2hcmd_lock, flags);


  if (!skb)
   break;

  RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG, "C2H rx_desc_shift=%d\n",
    *((u8 *)skb->cb));
  RT_PRINT_DATA(rtlpriv, COMP_FW, DBG_DMESG,
         "C2H data: ", skb->data, skb->len);

  if (exec)
   rtl_c2h_content_parsing(hw, skb);


  dev_kfree_skb_any(skb);
 }
}
