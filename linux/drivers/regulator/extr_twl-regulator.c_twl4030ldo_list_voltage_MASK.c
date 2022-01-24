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
struct twlreg_info {int* table; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct twlreg_info*,int) ; 
 int FUNC1 (int) ; 
 struct twlreg_info* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, unsigned index)
{
	struct twlreg_info	*info = FUNC2(rdev);
	int			mV = info->table[index];

	return FUNC0(info, mV) ? 0 : (FUNC1(mV) * 1000);
}