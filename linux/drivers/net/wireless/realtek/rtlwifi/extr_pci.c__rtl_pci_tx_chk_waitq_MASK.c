#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  waitq_lock; } ;
struct TYPE_14__ {scalar_t__ rfpwr_state; } ;
struct TYPE_11__ {scalar_t__ switch_in_process; } ;
struct TYPE_10__ {scalar_t__ supp_phymode_switch; } ;
struct TYPE_9__ {int /*<<< orphan*/  earlymode_enable; } ;
struct rtl_priv {TYPE_8__* intf_ops; TYPE_7__ locks; TYPE_6__ psc; TYPE_5__* buddy_priv; TYPE_3__ easy_concurrent_ctl; TYPE_2__ dm; TYPE_1__ rtlhal; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_mac {int /*<<< orphan*/ * skb_waitq; int /*<<< orphan*/  act_scanning; } ;
struct rtl_hal {scalar_t__ max_earlymode_num; } ;
struct rtl8192_tx_ring {scalar_t__ entries; int /*<<< orphan*/  queue; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* adapter_tx ) (struct ieee80211_hw*,int /*<<< orphan*/ *,struct sk_buff*,struct rtl_tcb_desc*) ;} ;
struct TYPE_12__ {scalar_t__ switch_in_process; } ;
struct TYPE_13__ {TYPE_4__ easy_concurrent_ctl; } ;

/* Variables and functions */
 scalar_t__ ERFON ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*,struct rtl_tcb_desc*,int) ; 
 size_t* ac_to_hwq ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_tcb_desc*,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 size_t FUNC8 (int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ *,struct sk_buff*,struct rtl_tcb_desc*) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_mac *mac = FUNC4(FUNC7(hw));
	struct rtl_pci *rtlpci = FUNC5(FUNC6(hw));
	struct sk_buff *skb = NULL;
	struct ieee80211_tx_info *info = NULL;
	struct rtl_hal *rtlhal = FUNC3(FUNC7(hw));
	int tid;

	if (!rtlpriv->rtlhal.earlymode_enable)
		return;

	if (rtlpriv->dm.supp_phymode_switch &&
	    (rtlpriv->easy_concurrent_ctl.switch_in_process ||
	    (rtlpriv->buddy_priv &&
	    rtlpriv->buddy_priv->easy_concurrent_ctl.switch_in_process)))
		return;
	/* we just use em for BE/BK/VI/VO */
	for (tid = 7; tid >= 0; tid--) {
		u8 hw_queue = ac_to_hwq[FUNC8(tid)];
		struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[hw_queue];

		while (!mac->act_scanning &&
		       rtlpriv->psc.rfpwr_state == ERFON) {
			struct rtl_tcb_desc tcb_desc;

			FUNC2(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));

			FUNC12(&rtlpriv->locks.waitq_lock);
			if (!FUNC10(&mac->skb_waitq[tid]) &&
			    (ring->entries - FUNC11(&ring->queue) >
			     rtlhal->max_earlymode_num)) {
				skb = FUNC9(&mac->skb_waitq[tid]);
			} else {
				FUNC13(&rtlpriv->locks.waitq_lock);
				break;
			}
			FUNC13(&rtlpriv->locks.waitq_lock);

			/* Some macaddr can't do early mode. like
			 * multicast/broadcast/no_qos data
			 */
			info = FUNC0(skb);
			if (info->flags & IEEE80211_TX_CTL_AMPDU)
				FUNC1(hw, skb,
							   &tcb_desc, tid);

			rtlpriv->intf_ops->adapter_tx(hw, NULL, skb, &tcb_desc);
		}
	}
}