#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pps_event_time {int dummy; } ;
struct pps_client_pp {unsigned int cw; scalar_t__ cw_err; TYPE_2__* pps; TYPE_1__* pardev; } ;
struct parport {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct parport* port; } ;

/* Variables and functions */
 scalar_t__ CLEAR_WAIT_MAX_ERRORS ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  PPS_CAPTURECLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct pps_event_time*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pps_event_time*) ; 
 int /*<<< orphan*/  FUNC5 (struct parport*) ; 

__attribute__((used)) static void FUNC6(void *handle)
{
	struct pps_event_time ts_assert, ts_clear;
	struct pps_client_pp *dev = handle;
	struct parport *port = dev->pardev->port;
	unsigned int i;
	unsigned long flags;

	/* first of all we get the time stamp... */
	FUNC4(&ts_assert);

	if (dev->cw == 0)
		/* clear edge capture disabled */
		goto out_assert;

	/* try capture the clear edge */

	/* We have to disable interrupts here. The idea is to prevent
	 * other interrupts on the same processor to introduce random
	 * lags while polling the port. Reading from IO port is known
	 * to take approximately 1us while other interrupt handlers can
	 * take much more potentially.
	 *
	 * Interrupts won't be disabled for a long time because the
	 * number of polls is limited by clear_wait parameter which is
	 * kept rather low. So it should never be an issue.
	 */
	FUNC2(flags);
	/* check the signal (no signal means the pulse is lost this time) */
	if (!FUNC5(port)) {
		FUNC1(flags);
		FUNC0(dev->pps->dev, "lost the signal\n");
		goto out_assert;
	}

	/* poll the port until the signal is unset */
	for (i = dev->cw; i; i--)
		if (!FUNC5(port)) {
			FUNC4(&ts_clear);
			FUNC1(flags);
			dev->cw_err = 0;
			goto out_both;
		}
	FUNC1(flags);

	/* timeout */
	dev->cw_err++;
	if (dev->cw_err >= CLEAR_WAIT_MAX_ERRORS) {
		FUNC0(dev->pps->dev, "disabled clear edge capture after %d"
				" timeouts\n", dev->cw_err);
		dev->cw = 0;
		dev->cw_err = 0;
	}

out_assert:
	/* fire assert event */
	FUNC3(dev->pps, &ts_assert,
			PPS_CAPTUREASSERT, NULL);
	return;

out_both:
	/* fire assert event */
	FUNC3(dev->pps, &ts_assert,
			PPS_CAPTUREASSERT, NULL);
	/* fire clear event */
	FUNC3(dev->pps, &ts_clear,
			PPS_CAPTURECLEAR, NULL);
	return;
}