#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct wd719x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WD719X_AMR_INT_STATUS ; 
 int /*<<< orphan*/  WD719X_AMR_SCB_ERROR ; 
 scalar_t__ WD719X_INT_NOERRORS ; 
 scalar_t__ WD719X_SUE_RESET ; 
 scalar_t__ WD719X_SUE_TERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct wd719x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct wd719x *wd, int timeout)
{
	u8 status;

	while (timeout > 0) {
		status = FUNC2(wd, WD719X_AMR_INT_STATUS);
		if (status)
			break;
		timeout--;
		FUNC1(1);
	}

	if (timeout <= 0) {
		FUNC0(&wd->pdev->dev, "direct command timed out\n");
		return -ETIMEDOUT;
	}

	if (status != WD719X_INT_NOERRORS) {
		u8 sue = FUNC2(wd, WD719X_AMR_SCB_ERROR);
		/* we get this after wd719x_dev_reset, it's not an error */
		if (sue == WD719X_SUE_TERM)
			return 0;
		/* we get this after wd719x_bus_reset, it's not an error */
		if (sue == WD719X_SUE_RESET)
			return 0;
		FUNC0(&wd->pdev->dev, "direct command failed, status 0x%02x, SUE 0x%02x\n",
			status, sue);
		return -EIO;
	}

	return 0;
}