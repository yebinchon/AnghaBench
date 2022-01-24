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
struct rcar_pcie {int dummy; } ;

/* Variables and functions */
 int DATA_LINK_ACTIVE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PCIETSTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct rcar_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rcar_pcie *pcie)
{
	unsigned int timeout = 10000;

	while (timeout--) {
		if ((FUNC1(pcie, PCIETSTR) & DATA_LINK_ACTIVE))
			return 0;

		FUNC2(5);
		FUNC0();
	}

	return -ETIMEDOUT;
}