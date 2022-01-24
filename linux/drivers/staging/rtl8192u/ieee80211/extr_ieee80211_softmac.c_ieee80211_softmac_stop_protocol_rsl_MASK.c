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
struct ieee80211_device {int sync_scan_hurryup; int /*<<< orphan*/  wx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_device *ieee)
{
	ieee->sync_scan_hurryup = 1;
	FUNC1(&ieee->wx_mutex);
	FUNC0(ieee);
	FUNC2(&ieee->wx_mutex);
}