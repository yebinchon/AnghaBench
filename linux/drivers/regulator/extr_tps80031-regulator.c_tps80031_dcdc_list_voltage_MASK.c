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
struct tps80031_regulator {int device_flags; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 struct tps80031_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,unsigned int) ; 
 int** tps80031_dcdc_voltages ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, unsigned sel)
{
	struct tps80031_regulator *ri = FUNC0(rdev);
	int volt_index = ri->device_flags & 0x3;

	if (sel == 0)
		return 0;
	else if (sel < 58)
		return FUNC1(rdev, sel - 1);
	else
		return tps80031_dcdc_voltages[volt_index][sel - 58] * 1000;
}