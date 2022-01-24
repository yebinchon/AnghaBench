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
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq_th_lock; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; size_t entries; int /*<<< orphan*/  queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fill_tx_cmddesc ) (struct ieee80211_hw*,size_t*,int,int,struct sk_buff*) ;} ;

/* Variables and functions */
 size_t TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,size_t*,int,int,struct sk_buff*) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_hw *hw,
		struct sk_buff *skb, u8 last)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));
	struct rtl8192_tx_ring *ring;
	struct rtl_tx_desc *pdesc;
	unsigned long flags;
	u8 idx = 0;

	ring = &rtlpci->tx_ring[TXCMD_QUEUE];

	FUNC5(&rtlpriv->locks.irq_th_lock, flags);

	idx = (ring->idx + FUNC4(&ring->queue)) % ring->entries;
	pdesc = &ring->desc[idx];
	rtlpriv->cfg->ops->fill_tx_cmddesc(hw, (u8 *)pdesc, 1, 1, skb);
	FUNC0(&ring->queue, skb);

	FUNC6(&rtlpriv->locks.irq_th_lock, flags);

	return true;
}