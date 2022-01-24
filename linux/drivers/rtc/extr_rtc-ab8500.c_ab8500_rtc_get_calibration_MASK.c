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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int /*<<< orphan*/  AB8500_RTC_CALIB_REG ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, int *calibration)
{
	int retval;
	u8  rtccal = 0;

	retval =  FUNC0(dev, AB8500_RTC,
			AB8500_RTC_CALIB_REG, &rtccal);
	if (retval >= 0) {
		/*
		 * The AB8500 uses sign (in bit7) and magnitude (in bits0-7)
		 * so need to convert value from RtcCalibration register into
		 * a two's complement signed value...
		 */
		if (rtccal & 0x80)
			*calibration = 0 - (rtccal & 0x7F);
		else
			*calibration = 0x7F & rtccal;
	}

	return retval;
}