#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ips_nic_off_wq; int /*<<< orphan*/  rtl_wq; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	/* because when link with ap, mac80211 will ask us
	 * to disable nic quickly after scan before linking,
	 * this will cause link failed, so we delay 100ms here
	 */
	FUNC1(rtlpriv->works.rtl_wq,
			   &rtlpriv->works.ips_nic_off_wq, FUNC0(100));
}