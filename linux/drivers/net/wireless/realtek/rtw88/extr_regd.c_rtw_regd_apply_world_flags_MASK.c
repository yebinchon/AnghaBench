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
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiphy*,int) ; 

__attribute__((used)) static void FUNC1(struct wiphy *wiphy,
				       enum nl80211_reg_initiator initiator)
{
	FUNC0(wiphy, initiator);
}