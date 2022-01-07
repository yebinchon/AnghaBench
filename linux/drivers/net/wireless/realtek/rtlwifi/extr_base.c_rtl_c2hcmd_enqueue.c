
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int c2hcmd_wq; int rtl_wq; } ;
struct TYPE_4__ {int c2hcmd_lock; } ;
struct rtl_priv {TYPE_1__ works; TYPE_2__ locks; int c2hcmd_queue; } ;
struct ieee80211_hw {int dummy; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rtl_c2h_content_parsing (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ rtl_c2h_fast_cmd (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl_c2hcmd_enqueue(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 unsigned long flags;

 if (rtl_c2h_fast_cmd(hw, skb)) {
  rtl_c2h_content_parsing(hw, skb);
  kfree_skb(skb);
  return;
 }


 spin_lock_irqsave(&rtlpriv->locks.c2hcmd_lock, flags);

 __skb_queue_tail(&rtlpriv->c2hcmd_queue, skb);

 spin_unlock_irqrestore(&rtlpriv->locks.c2hcmd_lock, flags);


 queue_delayed_work(rtlpriv->works.rtl_wq, &rtlpriv->works.c2hcmd_wq, 0);
}
