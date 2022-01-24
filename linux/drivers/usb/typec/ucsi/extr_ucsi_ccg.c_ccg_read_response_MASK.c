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
struct ucsi_ccg {int /*<<< orphan*/  dev_resp; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  intval ;

/* Variables and functions */
 int /*<<< orphan*/  CCGX_RAB_INTR_REG ; 
 int /*<<< orphan*/  CCGX_RAB_RESPONSE ; 
 int DEV_INT ; 
 int ETIME ; 
 int FUNC0 (struct ucsi_ccg*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct ucsi_ccg*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ucsi_ccg *uc)
{
	unsigned long target = jiffies + FUNC3(1000);
	struct device *dev = uc->dev;
	u8 intval;
	int status;

	/* wait for interrupt status to get updated */
	do {
		status = FUNC0(uc, CCGX_RAB_INTR_REG, &intval,
				  sizeof(intval));
		if (status < 0)
			return status;

		if (intval & DEV_INT)
			break;
		FUNC6(500, 600);
	} while (FUNC4(target));

	if (FUNC5(target)) {
		FUNC2(dev, "response timeout error\n");
		return -ETIME;
	}

	status = FUNC0(uc, CCGX_RAB_RESPONSE, (u8 *)&uc->dev_resp,
			  sizeof(uc->dev_resp));
	if (status < 0)
		return status;

	status = FUNC1(uc, CCGX_RAB_INTR_REG, &intval, sizeof(intval));
	if (status < 0)
		return status;

	return 0;
}