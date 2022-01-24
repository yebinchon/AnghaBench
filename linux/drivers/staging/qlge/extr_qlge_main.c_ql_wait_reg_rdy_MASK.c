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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int UDELAY_COUNT ; 
 int /*<<< orphan*/  UDELAY_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC1 (struct ql_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
{
	u32 temp;
	int count = UDELAY_COUNT;

	while (count) {
		temp = FUNC1(qdev, reg);

		/* check for errors */
		if (temp & err_bit) {
			FUNC0(qdev, probe, qdev->ndev,
				    "register 0x%.08x access error, value = 0x%.08x!.\n",
				    reg, temp);
			return -EIO;
		} else if (temp & bit)
			return 0;
		FUNC2(UDELAY_DELAY);
		count--;
	}
	FUNC0(qdev, probe, qdev->ndev,
		    "Timed out waiting for reg %x to come ready.\n", reg);
	return -ETIMEDOUT;
}