#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  TW_DRIVER ; 
 int TW_MAX_RESET_TRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int TW_STATUS_ATTENTION_INTERRUPT ; 
 int TW_STATUS_MICROCONTROLLER_READY ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC7(TW_Device_Extension *tw_dev, int soft_reset)
{
	int tries = 0, retval = 1, flashed = 0, do_soft_reset = soft_reset;

	while (tries < TW_MAX_RESET_TRIES) {
		if (do_soft_reset) {
			FUNC1(tw_dev);
			/* Clear pchip/response queue on 9550SX */
			if (FUNC5(tw_dev)) {
				FUNC0(tw_dev->host, TW_DRIVER, 0x36, "Response queue (large) empty failed during reset sequence");
				do_soft_reset = 1;
				tries++;
				continue;
			}
		}

		/* Make sure controller is in a good state */
		if (FUNC6(tw_dev, TW_STATUS_MICROCONTROLLER_READY | (do_soft_reset == 1 ? TW_STATUS_ATTENTION_INTERRUPT : 0), 60)) {
			FUNC0(tw_dev->host, TW_DRIVER, 0x1f, "Microcontroller not ready during reset sequence");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		/* Empty response queue */
		if (FUNC4(tw_dev)) {
			FUNC0(tw_dev->host, TW_DRIVER, 0x20, "Response queue empty failed during reset sequence");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		flashed = 0;

		/* Check for compatibility/flash */
		if (FUNC3(tw_dev, &flashed)) {
			FUNC0(tw_dev->host, TW_DRIVER, 0x21, "Compatibility check failed during reset sequence");
			do_soft_reset = 1;
			tries++;
			continue;
		} else {
			if (flashed) {
				tries++;
				continue;
			}
		}

		/* Drain the AEN queue */
		if (FUNC2(tw_dev, soft_reset)) {
			FUNC0(tw_dev->host, TW_DRIVER, 0x22, "AEN drain failed during reset sequence");
			do_soft_reset = 1;
			tries++;
			continue;
		}

		/* If we got here, controller is in a good state */
		retval = 0;
		goto out;
	}
out:
	return retval;
}