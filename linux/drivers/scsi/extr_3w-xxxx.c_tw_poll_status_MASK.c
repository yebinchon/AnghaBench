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
typedef  int u32 ;
typedef  int /*<<< orphan*/  TW_Device_Extension ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(TW_Device_Extension *tw_dev, u32 flag, int seconds)
{
	u32 status_reg_value;
	unsigned long before;
	int retval = 1;

	status_reg_value = FUNC1(FUNC0(tw_dev));
	before = jiffies;

	if (FUNC4(status_reg_value))
		FUNC5(tw_dev, status_reg_value, 0);

	while ((status_reg_value & flag) != flag) {
		status_reg_value = FUNC1(FUNC0(tw_dev));

		if (FUNC4(status_reg_value))
			FUNC5(tw_dev, status_reg_value, 0);

		if (FUNC3(jiffies, before + HZ * seconds))
			goto out;

		FUNC2(50);
	}
	retval = 0;
out:
	return retval;
}