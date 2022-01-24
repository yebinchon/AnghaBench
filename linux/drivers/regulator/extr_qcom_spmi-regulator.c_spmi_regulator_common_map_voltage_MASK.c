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
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 struct spmi_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct spmi_regulator*,int,int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
					     int min_uV, int max_uV)
{
	struct spmi_regulator *vreg = FUNC0(rdev);

	/*
	 * Favor staying in the current voltage range if possible.  This avoids
	 * voltage spikes that occur when changing the voltage range.
	 */
	return FUNC1(vreg, min_uV, max_uV);
}