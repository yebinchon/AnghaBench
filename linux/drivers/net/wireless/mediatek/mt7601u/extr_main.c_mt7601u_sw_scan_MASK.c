#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mt7601u_dev {int /*<<< orphan*/  state; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_hw *hw,
		struct ieee80211_vif *vif,
		const u8 *mac_addr)
{
	struct mt7601u_dev *dev = hw->priv;

	FUNC0(dev);
	FUNC1(MT7601U_STATE_SCANNING, &dev->state);
}