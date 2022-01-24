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
struct qtnf_wmac {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/ * scan_req; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct qtnf_wmac *mac, bool aborted)
{
	struct cfg80211_scan_info info = {
		.aborted = aborted,
	};

	FUNC1(&mac->mac_lock);

	if (mac->scan_req) {
		FUNC0(mac->scan_req, &info);
		mac->scan_req = NULL;
	}

	FUNC2(&mac->mac_lock);
}