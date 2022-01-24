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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(struct ufs_hba *hba, u32 reg, u32 mask,
				u32 val, unsigned long interval_us,
				unsigned long timeout_ms, bool can_sleep)
{
	int err = 0;
	unsigned long timeout = jiffies + FUNC0(timeout_ms);

	/* ignore bits that we don't intend to wait on */
	val = val & mask;

	while ((FUNC3(hba, reg) & mask) != val) {
		if (can_sleep)
			FUNC4(interval_us, interval_us + 50);
		else
			FUNC2(interval_us);
		if (FUNC1(jiffies, timeout)) {
			if ((FUNC3(hba, reg) & mask) != val)
				err = -ETIMEDOUT;
			break;
		}
	}

	return err;
}