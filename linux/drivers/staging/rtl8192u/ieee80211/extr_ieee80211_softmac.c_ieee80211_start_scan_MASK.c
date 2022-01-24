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
struct ieee80211_device {int softmac_features; int scanning; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* start_scan ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  softmac_scan_wq; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_SCAN ; 
 scalar_t__ FUNC0 (struct ieee80211_device*) ; 
 scalar_t__ FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_device *ieee)
{
	if (FUNC1(ieee)) {
		if (FUNC0(ieee))
			FUNC2(ieee);
	}
	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
		if (ieee->scanning == 0) {
			ieee->scanning = 1;
			FUNC3(&ieee->softmac_scan_wq, 0);
		}
	} else {
		ieee->start_scan(ieee->dev);
	}
}