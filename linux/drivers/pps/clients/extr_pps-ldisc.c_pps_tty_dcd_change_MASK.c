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
struct tty_struct {int dummy; } ;
struct pps_event_time {int dummy; } ;
struct pps_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  PPS_CAPTURECLEAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct pps_device*,struct pps_event_time*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pps_event_time*) ; 
 struct pps_device* FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, unsigned int status)
{
	struct pps_device *pps;
	struct pps_event_time ts;

	FUNC3(&ts);

	pps = FUNC4(tty);
	/*
	 * This should never fail, but the ldisc locking is very
	 * convoluted, so don't crash just in case.
	 */
	if (FUNC0(pps == NULL))
		return;

	/* Now do the PPS event report */
	FUNC2(pps, &ts, status ? PPS_CAPTUREASSERT :
			PPS_CAPTURECLEAR, NULL);

	FUNC1(pps->dev, "PPS %s at %lu\n",
			status ? "assert" : "clear", jiffies);
}