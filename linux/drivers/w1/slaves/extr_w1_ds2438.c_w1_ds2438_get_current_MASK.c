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
typedef  scalar_t__ u8 ;
struct w1_slave {TYPE_1__* master; } ;
typedef  int int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 size_t DS2438_CURRENT_LSB ; 
 size_t DS2438_CURRENT_MSB ; 
 int /*<<< orphan*/  DS2438_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct w1_slave*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct w1_slave *sl, int16_t *voltage)
{
	u8 w1_buf[DS2438_PAGE_SIZE + 1 /*for CRC*/];
	int ret;

	FUNC0(&sl->master->bus_mutex);

	if (FUNC2(sl, 0, w1_buf) == 0) {
		/* The voltage measured across current sense resistor RSENS. */
		*voltage = (((int16_t) w1_buf[DS2438_CURRENT_MSB]) << 8) | ((int16_t) w1_buf[DS2438_CURRENT_LSB]);
		ret = 0;
	} else
		ret = -1;

	FUNC1(&sl->master->bus_mutex);

	return ret;
}