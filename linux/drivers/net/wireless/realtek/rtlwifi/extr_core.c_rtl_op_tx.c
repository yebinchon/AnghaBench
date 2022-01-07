
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct rtl_priv {TYPE_1__* intf_ops; int status; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int (* adapter_tx ) (struct ieee80211_hw*,int ,struct sk_buff*,struct rtl_tcb_desc*) ;int (* waitq_insert ) (struct ieee80211_hw*,int ,struct sk_buff*) ;} ;


 scalar_t__ ERFON ;
 int RTL_STATUS_INTERFACE_START ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int memset (struct rtl_tcb_desc*,int ,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ,struct sk_buff*) ;
 int stub2 (struct ieee80211_hw*,int ,struct sk_buff*,struct rtl_tcb_desc*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rtl_op_tx(struct ieee80211_hw *hw,
        struct ieee80211_tx_control *control,
        struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_tcb_desc tcb_desc;

 memset(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));

 if (unlikely(is_hal_stop(rtlhal) || ppsc->rfpwr_state != ERFON))
  goto err_free;

 if (!test_bit(RTL_STATUS_INTERFACE_START, &rtlpriv->status))
  goto err_free;

 if (!rtlpriv->intf_ops->waitq_insert(hw, control->sta, skb))
  rtlpriv->intf_ops->adapter_tx(hw, control->sta, skb, &tcb_desc);
 return;

err_free:
 dev_kfree_skb_any(skb);
}
