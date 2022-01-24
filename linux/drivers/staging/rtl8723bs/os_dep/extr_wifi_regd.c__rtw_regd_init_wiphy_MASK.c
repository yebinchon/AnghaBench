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
struct rtw_regulatory {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REGULATORY_CUSTOM_REG ; 
 int /*<<< orphan*/  REGULATORY_DISABLE_BEACON_HINTS ; 
 int /*<<< orphan*/  REGULATORY_STRICT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*) ; 
 struct ieee80211_regdomain* FUNC1 (struct rtw_regulatory*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,struct ieee80211_regdomain const*) ; 

__attribute__((used)) static void FUNC3(struct rtw_regulatory *reg,
				 struct wiphy *wiphy,
				 void (*reg_notifier)(struct wiphy *wiphy,
						      struct
						      regulatory_request *
						      request))
{
	const struct ieee80211_regdomain *regd;

	wiphy->reg_notifier = reg_notifier;

	wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
	wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
	wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;

	regd = FUNC1(reg);
	FUNC2(wiphy, regd);

	/* Hard code flags */
	FUNC0(wiphy);
}