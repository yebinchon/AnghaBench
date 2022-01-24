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
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPMI_FTSMPS426_REG_VOLTAGE_LSB ; 
 struct spmi_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,unsigned int) ; 
 int FUNC2 (struct spmi_regulator*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					      unsigned selector)
{
	struct spmi_regulator *vreg = FUNC0(rdev);
	u8 buf[2];
	int mV;

	mV = FUNC1(rdev, selector) / 1000;

	buf[0] = mV & 0xff;
	buf[1] = mV >> 8;
	return FUNC2(vreg, SPMI_FTSMPS426_REG_VOLTAGE_LSB, buf, 2);
}