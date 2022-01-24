#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct qtnf_wmac {int /*<<< orphan*/  scan_timeout; TYPE_1__* bus; int /*<<< orphan*/  macid; struct cfg80211_scan_request* scan_req; } ;
struct cfg80211_scan_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int HZ ; 
 int QTNF_SCAN_TIMEOUT_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct qtnf_wmac* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static int
FUNC6(struct wiphy *wiphy, struct cfg80211_scan_request *request)
{
	struct qtnf_wmac *mac = FUNC5(wiphy);
	int ret;

	FUNC0(&mac->scan_timeout);

	mac->scan_req = request;

	ret = FUNC3(mac);
	if (ret) {
		FUNC2("MAC%u: failed to start scan\n", mac->macid);
		mac->scan_req = NULL;
		goto out;
	}

	FUNC1("MAC%u: scan started\n", mac->macid);
	FUNC4(mac->bus->workqueue, &mac->scan_timeout,
			   QTNF_SCAN_TIMEOUT_SEC * HZ);

out:
	return ret;
}