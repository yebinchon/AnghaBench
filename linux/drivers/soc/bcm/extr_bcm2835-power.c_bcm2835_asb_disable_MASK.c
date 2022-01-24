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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct bcm2835_power {int dummy; } ;

/* Variables and functions */
 int ASB_ACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ASB_REQ_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct bcm2835_power *power, u32 reg)
{
	u64 start;

	if (!reg)
		return 0;

	start = FUNC3();

	/* Enable the module's async AXI bridges. */
	FUNC1(reg, FUNC0(reg) | ASB_REQ_STOP);
	while (!(FUNC0(reg) & ASB_ACK)) {
		FUNC2();
		if (FUNC3() - start >= 1000)
			return -ETIMEDOUT;
	}

	return 0;
}