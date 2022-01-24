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
struct ieee80211_device {int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  associate_timer; int /*<<< orphan*/ * dot11d_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ieee80211_device *ieee)
{
	FUNC3(&ieee->wx_mutex);
	FUNC2(ieee->dot11d_info);
	ieee->dot11d_info = NULL;
	FUNC1(&ieee->associate_timer);

	FUNC0(&ieee->associate_retry_wq);

	FUNC4(&ieee->wx_mutex);
}