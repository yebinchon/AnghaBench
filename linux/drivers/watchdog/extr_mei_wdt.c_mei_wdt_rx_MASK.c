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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ command; scalar_t__ versionnumber; scalar_t__ subcommand; } ;
struct mei_wdt_start_response {int wdstate; TYPE_1__ hdr; } ;
struct mei_wdt {scalar_t__ state; int /*<<< orphan*/  response; int /*<<< orphan*/  unregister; int /*<<< orphan*/  cldev; } ;
struct mei_mc_hdr {int dummy; } ;
struct mei_cl_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 scalar_t__ MEI_MANAGEMENT_CONTROL ; 
 scalar_t__ MEI_MC_START_WD_TIMER_RES ; 
 scalar_t__ MEI_MC_VERSION_NUMBER ; 
 void* MEI_WDT_NOT_REQUIRED ; 
 scalar_t__ MEI_WDT_PROBE ; 
 scalar_t__ MEI_WDT_RUNNING ; 
 int MEI_WDT_WDSTATE_NOT_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,...) ; 
 struct mei_wdt* FUNC4 (struct mei_cl_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mei_cl_device *cldev)
{
	struct mei_wdt *wdt = FUNC4(cldev);
	struct mei_wdt_start_response res;
	const size_t res_len = sizeof(res);
	int ret;

	ret = FUNC5(wdt->cldev, (u8 *)&res, res_len);
	if (ret < 0) {
		FUNC2(&cldev->dev, "failure in recv %d\n", ret);
		return;
	}

	/* Empty response can be sent on stop */
	if (ret == 0)
		return;

	if (ret < sizeof(struct mei_mc_hdr)) {
		FUNC2(&cldev->dev, "recv small data %d\n", ret);
		return;
	}

	if (res.hdr.command != MEI_MANAGEMENT_CONTROL ||
	    res.hdr.versionnumber != MEI_MC_VERSION_NUMBER) {
		FUNC2(&cldev->dev, "wrong command received\n");
		return;
	}

	if (res.hdr.subcommand != MEI_MC_START_WD_TIMER_RES) {
		FUNC3(&cldev->dev, "unsupported command %d :%s[%d]\n",
			 res.hdr.subcommand,
			 FUNC7(wdt->state),
			 wdt->state);
		return;
	}

	/* Run the unregistration in a worker as this can be
	 * run only after ping completion, otherwise the flow will
	 * deadlock on watchdog core mutex.
	 */
	if (wdt->state == MEI_WDT_RUNNING) {
		if (res.wdstate & MEI_WDT_WDSTATE_NOT_REQUIRED) {
			wdt->state = MEI_WDT_NOT_REQUIRED;
			FUNC9(&wdt->unregister);
		}
		goto out;
	}

	if (wdt->state == MEI_WDT_PROBE) {
		if (res.wdstate & MEI_WDT_WDSTATE_NOT_REQUIRED) {
			wdt->state = MEI_WDT_NOT_REQUIRED;
		} else {
			/* stop the watchdog and register watchdog device */
			FUNC8(wdt);
			FUNC6(wdt);
		}
		return;
	}

	FUNC3(&cldev->dev, "not in correct state %s[%d]\n",
			 FUNC7(wdt->state), wdt->state);

out:
	if (!FUNC1(&wdt->response))
		FUNC0(&wdt->response);
}