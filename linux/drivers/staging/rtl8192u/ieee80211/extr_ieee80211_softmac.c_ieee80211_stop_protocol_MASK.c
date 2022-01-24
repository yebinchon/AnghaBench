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
struct ieee80211_device {int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; scalar_t__ proto_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_device*) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	if (!ieee->proto_started)
		return;

	ieee->proto_started = 0;

	FUNC5(ieee);
	FUNC2(&ieee->associate_timer);
	FUNC1(&ieee->associate_retry_wq);
	FUNC1(&ieee->start_ibss_wq);
	FUNC4(ieee);

	FUNC3(ieee);
	FUNC0(ieee); //added as we disconnect from the previous BSS, Remove all TS
}