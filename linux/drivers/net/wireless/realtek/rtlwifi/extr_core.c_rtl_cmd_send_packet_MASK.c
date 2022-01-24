#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_th_lock; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ locks; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {int /*<<< orphan*/  queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* tx_polling ) (struct ieee80211_hw*,size_t) ;int /*<<< orphan*/  (* fill_tx_cmddesc ) (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int,struct sk_buff*) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,size_t) ; 

bool FUNC10(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	struct rtl8192_tx_ring *ring;
	struct rtl_tx_desc *pdesc;
	unsigned long flags;
	struct sk_buff *pskb = NULL;

	ring = &rtlpci->tx_ring[BEACON_QUEUE];

	FUNC6(&rtlpriv->locks.irq_th_lock, flags);
	pskb = FUNC0(&ring->queue);
	if (pskb)
		FUNC2(pskb);

	/*this is wrong, fill_tx_cmddesc needs update*/
	pdesc = &ring->desc[0];

	rtlpriv->cfg->ops->fill_tx_cmddesc(hw, (u8 *)pdesc, 1, 1, skb);

	FUNC1(&ring->queue, skb);

	FUNC7(&rtlpriv->locks.irq_th_lock, flags);

	rtlpriv->cfg->ops->tx_polling(hw, BEACON_QUEUE);

	return true;
}