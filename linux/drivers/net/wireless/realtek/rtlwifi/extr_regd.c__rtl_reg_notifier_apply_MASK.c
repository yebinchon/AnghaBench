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
struct wiphy {int dummy; } ;
struct rtl_regulatory {int dummy; } ;
struct regulatory_request {int initiator; } ;

/* Variables and functions */
#define  NL80211_REGDOM_SET_BY_CORE 131 
#define  NL80211_REGDOM_SET_BY_COUNTRY_IE 130 
#define  NL80211_REGDOM_SET_BY_DRIVER 129 
#define  NL80211_REGDOM_SET_BY_USER 128 
 int /*<<< orphan*/  FUNC0 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,int,struct rtl_regulatory*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy,
				   struct regulatory_request *request,
				   struct rtl_regulatory *reg)
{
	/* We always apply this */
	FUNC0(wiphy);

	switch (request->initiator) {
	case NL80211_REGDOM_SET_BY_DRIVER:
	case NL80211_REGDOM_SET_BY_CORE:
	case NL80211_REGDOM_SET_BY_USER:
		break;
	case NL80211_REGDOM_SET_BY_COUNTRY_IE:
		FUNC1(wiphy, request->initiator, reg);
		break;
	}

	return 0;
}