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
struct chaoskey {int valid; int used; int reading; int reads_started; int /*<<< orphan*/  interface; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  urb; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALEA_FIRST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAK_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct chaoskey *dev)
{
	FUNC0(wait);
	int result;
	bool started;

	FUNC3(dev->interface, "fill");

	/* Return immediately if someone called before the buffer was
	 * empty */
	if (dev->valid != dev->used) {
		FUNC3(dev->interface, "not empty yet (valid %d used %d)",
			dev->valid, dev->used);
		return 0;
	}

	/* Bail if the device has been removed */
	if (!dev->present) {
		FUNC3(dev->interface, "device not present");
		return -ENODEV;
	}

	/* Make sure the device is awake */
	result = FUNC1(dev->interface);
	if (result) {
		FUNC3(dev->interface, "wakeup failed (result %d)", result);
		return result;
	}

	dev->reading = true;
	result = FUNC4(dev->urb, GFP_KERNEL);
	if (result < 0) {
		result = FUNC5(result);
		dev->reading = false;
		goto out;
	}

	/* The first read on the Alea takes a little under 2 seconds.
	 * Reads after the first read take only a few microseconds
	 * though.  Presumably the entropy-generating circuit needs
	 * time to ramp up.  So, we wait longer on the first read.
	 */
	started = dev->reads_started;
	dev->reads_started = true;
	result = FUNC6(
		dev->wait_q,
		!dev->reading,
		(started ? NAK_TIMEOUT : ALEA_FIRST_TIMEOUT) );

	if (result < 0)
		goto out;

	if (result == 0)
		result = -ETIMEDOUT;
	else
		result = dev->valid;
out:
	/* Let the device go back to sleep eventually */
	FUNC2(dev->interface);

	FUNC3(dev->interface, "read %d bytes", dev->valid);

	return result;
}