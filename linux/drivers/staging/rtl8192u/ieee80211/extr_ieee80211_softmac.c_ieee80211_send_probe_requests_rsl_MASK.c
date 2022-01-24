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
struct ieee80211_device {int softmac_features; scalar_t__ active_scan; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_PROBERQ ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 

__attribute__((used)) static void FUNC1(struct ieee80211_device *ieee)
{
	if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)) {
		FUNC0(ieee);
		FUNC0(ieee);
	}
}