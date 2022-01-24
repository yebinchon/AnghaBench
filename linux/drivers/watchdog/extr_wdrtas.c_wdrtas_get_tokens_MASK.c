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

/* Variables and functions */
 int EIO ; 
 scalar_t__ RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/  WDRTAS_DEFAULT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ wdrtas_token_event_scan ; 
 scalar_t__ wdrtas_token_get_sensor_state ; 
 scalar_t__ wdrtas_token_get_sp ; 
 scalar_t__ wdrtas_token_set_indicator ; 

__attribute__((used)) static int FUNC3(void)
{
	wdrtas_token_get_sensor_state = FUNC2("get-sensor-state");
	if (wdrtas_token_get_sensor_state == RTAS_UNKNOWN_SERVICE) {
		FUNC1("couldn't get token for get-sensor-state. Trying to continue without temperature support.\n");
	}

	wdrtas_token_get_sp = FUNC2("ibm,get-system-parameter");
	if (wdrtas_token_get_sp == RTAS_UNKNOWN_SERVICE) {
		FUNC1("couldn't get token for ibm,get-system-parameter. Trying to continue with a default timeout value of %i seconds.\n",
			WDRTAS_DEFAULT_INTERVAL);
	}

	wdrtas_token_set_indicator = FUNC2("set-indicator");
	if (wdrtas_token_set_indicator == RTAS_UNKNOWN_SERVICE) {
		FUNC0("couldn't get token for set-indicator. Terminating watchdog code.\n");
		return -EIO;
	}

	wdrtas_token_event_scan = FUNC2("event-scan");
	if (wdrtas_token_event_scan == RTAS_UNKNOWN_SERVICE) {
		FUNC0("couldn't get token for event-scan. Terminating watchdog code.\n");
		return -EIO;
	}

	return 0;
}