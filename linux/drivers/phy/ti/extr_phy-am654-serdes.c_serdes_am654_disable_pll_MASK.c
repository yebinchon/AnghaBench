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
struct serdes_am654 {int /*<<< orphan*/  pll_enable; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_DISABLE_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct serdes_am654 *phy)
{
	struct device *dev = phy->dev;
	int ret;

	ret = FUNC1(phy->pll_enable, PLL_DISABLE_STATE);
	if (ret)
		FUNC0(dev, "Failed to disable PLL\n");
}