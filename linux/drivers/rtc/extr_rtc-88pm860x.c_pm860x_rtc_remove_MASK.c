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
struct pm860x_rtc_info {int /*<<< orphan*/  i2c; int /*<<< orphan*/  calib_work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEAS2_VRTC ; 
 int /*<<< orphan*/  PM8607_MEAS_EN2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pm860x_rtc_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct pm860x_rtc_info *info = FUNC1(pdev);

#ifdef VRTC_CALIBRATION
	cancel_delayed_work_sync(&info->calib_work);
	/* disable measurement */
	pm860x_set_bits(info->i2c, PM8607_MEAS_EN2, MEAS2_VRTC, 0);
#endif	/* VRTC_CALIBRATION */

	return 0;
}