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
struct zd_mac {int /*<<< orphan*/  chip; int /*<<< orphan*/ * vif; int /*<<< orphan*/  type; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 struct zd_mac* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif)
{
	struct zd_mac *mac = FUNC0(hw);
	mac->type = NL80211_IFTYPE_UNSPECIFIED;
	mac->vif = NULL;
	FUNC2(&mac->chip, 0, 0, NL80211_IFTYPE_UNSPECIFIED);
	FUNC3(&mac->chip, NULL);

	FUNC1(mac);
}