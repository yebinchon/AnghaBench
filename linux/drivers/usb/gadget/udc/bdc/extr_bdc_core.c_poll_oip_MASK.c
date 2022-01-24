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
typedef  int /*<<< orphan*/  u32 ;
struct bdc {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDC_BDCSC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BDC_OIP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct bdc *bdc, int usec)
{
	u32 status;
	/* Poll till STS!= OIP */
	while (usec) {
		status = FUNC1(bdc->regs, BDC_BDCSC);
		if (FUNC0(status) != BDC_OIP) {
			FUNC2(bdc->dev,
				"poll_oip complete status=%d",
				FUNC0(status));
			return 0;
		}
		FUNC4(10);
		usec -= 10;
	}
	FUNC3(bdc->dev, "Err: operation timedout BDCSC: 0x%08x\n", status);

	return -ETIMEDOUT;
}