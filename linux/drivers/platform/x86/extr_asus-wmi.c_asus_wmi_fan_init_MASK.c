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
struct asus_wmi {scalar_t__ fan_type; int agfn_pwm; int /*<<< orphan*/  fan_pwm_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_FAN_CTRL_AUTO ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_CPU_FAN_CTRL ; 
 int ENODEV ; 
 scalar_t__ FAN_TYPE_AGFN ; 
 scalar_t__ FAN_TYPE_NONE ; 
 scalar_t__ FAN_TYPE_SPEC83 ; 
 int /*<<< orphan*/  FUNC0 (struct asus_wmi*) ; 
 scalar_t__ FUNC1 (struct asus_wmi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct asus_wmi*) ; 

__attribute__((used)) static int FUNC3(struct asus_wmi *asus)
{
	asus->fan_type = FAN_TYPE_NONE;
	asus->agfn_pwm = -1;

	if (FUNC1(asus, ASUS_WMI_DEVID_CPU_FAN_CTRL))
		asus->fan_type = FAN_TYPE_SPEC83;
	else if (FUNC2(asus))
		asus->fan_type = FAN_TYPE_AGFN;

	if (asus->fan_type == FAN_TYPE_NONE)
		return -ENODEV;

	FUNC0(asus);
	asus->fan_pwm_mode = ASUS_FAN_CTRL_AUTO;
	return 0;
}