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
struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int /*<<< orphan*/  regulatory_flags; } ;
struct rtl_regulatory {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_DRIVER ; 
 int /*<<< orphan*/  REGULATORY_CUSTOM_REG ; 
 int /*<<< orphan*/  REGULATORY_DISABLE_BEACON_HINTS ; 
 int /*<<< orphan*/  REGULATORY_STRICT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,int /*<<< orphan*/ ,struct rtl_regulatory*) ; 
 struct ieee80211_regdomain* FUNC2 (struct rtl_regulatory*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,struct ieee80211_regdomain const*) ; 

__attribute__((used)) static int FUNC4(struct rtl_regulatory *reg,
				struct wiphy *wiphy,
				void (*reg_notifier)(struct wiphy *wiphy,
						     struct regulatory_request *
						     request))
{
	const struct ieee80211_regdomain *regd;

	wiphy->reg_notifier = reg_notifier;

	wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
	wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
	wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;
	regd = FUNC2(reg);
	FUNC3(wiphy, regd);
	FUNC0(wiphy);
	FUNC1(wiphy, NL80211_REGDOM_SET_BY_DRIVER, reg);
	return 0;
}