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
typedef  int u8 ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
#define  TPACPI_FAN_RD_TPEC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  fan_rpm_offset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int fan_status_access_mode ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(unsigned int *speed)
{
	u8 hi, lo;

	switch (fan_status_access_mode) {
	case TPACPI_FAN_RD_TPEC:
		/* all except 570, 600e/x, 770e, 770x */
		if (FUNC3(!FUNC1()))
			return -EIO;
		if (FUNC3(!FUNC0(fan_rpm_offset, &lo) ||
			     !FUNC0(fan_rpm_offset + 1, &hi)))
			return -EIO;

		if (FUNC2(speed))
			*speed = (hi << 8) | lo;

		break;

	default:
		return -ENXIO;
	}

	return 0;
}