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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct advk_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PIO_ISR ; 
 int /*<<< orphan*/  PIO_START ; 
 int /*<<< orphan*/  PIO_TIMEOUT_MS ; 
 scalar_t__ FUNC0 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct advk_pcie *pcie)
{
	struct device *dev = &pcie->pdev->dev;
	unsigned long timeout;

	timeout = jiffies + FUNC2(PIO_TIMEOUT_MS);

	while (FUNC3(jiffies, timeout)) {
		u32 start, isr;

		start = FUNC0(pcie, PIO_START);
		isr = FUNC0(pcie, PIO_ISR);
		if (!start && isr)
			return 0;
	}

	FUNC1(dev, "config read/write timed out\n");
	return -ETIMEDOUT;
}