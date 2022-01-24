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
typedef  int uint16_t ;
typedef  scalar_t__ u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 unsigned int DS2438_MAX_CONVERSION_TIME ; 
 int /*<<< orphan*/  DS2438_PAGE_SIZE ; 
 int /*<<< orphan*/  DS2438_STATUS_AD ; 
 size_t DS2438_VOLTAGE_LSB ; 
 size_t DS2438_VOLTAGE_MSB ; 
 int /*<<< orphan*/  W1_DS2438_CONVERT_VOLTAGE ; 
 unsigned int W1_DS2438_RETRIES ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct w1_slave*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct w1_slave*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct w1_slave *sl,
				 int adc_input, uint16_t *voltage)
{
	unsigned int retries = W1_DS2438_RETRIES;
	u8 w1_buf[DS2438_PAGE_SIZE + 1 /*for CRC*/];
	unsigned int tm = DS2438_MAX_CONVERSION_TIME;
	unsigned long sleep_rem;
	int ret;

	FUNC1(&sl->master->bus_mutex);

	if (FUNC4(sl, DS2438_STATUS_AD, adc_input)) {
		ret = -1;
		goto pre_unlock;
	}

	while (retries--) {
		if (FUNC6(sl))
			continue;
		FUNC7(sl->master, W1_DS2438_CONVERT_VOLTAGE);

		FUNC3(&sl->master->bus_mutex);
		sleep_rem = FUNC0(tm);
		if (sleep_rem != 0) {
			ret = -1;
			goto post_unlock;
		}

		if (FUNC2(&sl->master->bus_mutex) != 0) {
			ret = -1;
			goto post_unlock;
		}

		break;
	}

	if (FUNC5(sl, 0, w1_buf) == 0) {
		*voltage = (((uint16_t) w1_buf[DS2438_VOLTAGE_MSB]) << 8) | ((uint16_t) w1_buf[DS2438_VOLTAGE_LSB]);
		ret = 0;
	} else
		ret = -1;

pre_unlock:
	FUNC3(&sl->master->bus_mutex);

post_unlock:
	return ret;
}