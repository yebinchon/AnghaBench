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
struct sprd_adi {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int ADI_FIFO_DRAIN_TIMEOUT ; 
 int BIT_FIFO_EMPTY ; 
 int EBUSY ; 
 scalar_t__ REG_ADI_ARM_FIFO_STS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sprd_adi *sadi)
{
	u32 timeout = ADI_FIFO_DRAIN_TIMEOUT;
	u32 sts;

	do {
		sts = FUNC2(sadi->base + REG_ADI_ARM_FIFO_STS);
		if (sts & BIT_FIFO_EMPTY)
			break;

		FUNC0();
	} while (--timeout);

	if (timeout == 0) {
		FUNC1(sadi->dev, "drain write fifo timeout\n");
		return -EBUSY;
	}

	return 0;
}