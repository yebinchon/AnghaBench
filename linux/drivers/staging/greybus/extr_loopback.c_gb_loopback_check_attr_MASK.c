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
struct gb_loopback {scalar_t__ us_wait; scalar_t__ size; scalar_t__ iteration_max; int type; int /*<<< orphan*/  wq; int /*<<< orphan*/  jiffy_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  kfifo_lat; int /*<<< orphan*/  dev; scalar_t__ error; scalar_t__ send_count; scalar_t__ iteration_count; scalar_t__ requests_completed; scalar_t__ requests_timedout; } ;
struct TYPE_2__ {scalar_t__ size_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_LOOPBACK_TIMEOUT_MAX ; 
 int /*<<< orphan*/  GB_LOOPBACK_TIMEOUT_MIN ; 
#define  GB_LOOPBACK_TYPE_PING 130 
#define  GB_LOOPBACK_TYPE_SINK 129 
#define  GB_LOOPBACK_TYPE_TRANSFER 128 
 scalar_t__ GB_LOOPBACK_US_WAIT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 TYPE_1__ gb_dev ; 
 int /*<<< orphan*/  FUNC1 (struct gb_loopback*) ; 
 scalar_t__ kfifo_depth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gb_loopback *gb)
{
	if (gb->us_wait > GB_LOOPBACK_US_WAIT_MAX)
		gb->us_wait = GB_LOOPBACK_US_WAIT_MAX;
	if (gb->size > gb_dev.size_max)
		gb->size = gb_dev.size_max;
	gb->requests_timedout = 0;
	gb->requests_completed = 0;
	gb->iteration_count = 0;
	gb->send_count = 0;
	gb->error = 0;

	if (kfifo_depth < gb->iteration_max) {
		FUNC0(gb->dev,
			 "cannot log bytes %u kfifo_depth %u\n",
			 gb->iteration_max, kfifo_depth);
	}
	FUNC2(&gb->kfifo_lat);

	switch (gb->type) {
	case GB_LOOPBACK_TYPE_PING:
	case GB_LOOPBACK_TYPE_TRANSFER:
	case GB_LOOPBACK_TYPE_SINK:
		gb->jiffy_timeout = FUNC3(gb->timeout);
		if (!gb->jiffy_timeout)
			gb->jiffy_timeout = GB_LOOPBACK_TIMEOUT_MIN;
		else if (gb->jiffy_timeout > GB_LOOPBACK_TIMEOUT_MAX)
			gb->jiffy_timeout = GB_LOOPBACK_TIMEOUT_MAX;
		FUNC1(gb);
		FUNC4(&gb->wq);
		break;
	default:
		gb->type = 0;
		break;
	}
}