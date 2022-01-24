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
struct serdes_am654 {int /*<<< orphan*/  cmu_ok_i_0; struct device* dev; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_LOCK_TIME ; 
 int /*<<< orphan*/  SLEEP_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct serdes_am654* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct serdes_am654*) ; 
 int FUNC4 (struct serdes_am654*) ; 

__attribute__((used)) static int FUNC5(struct phy *x)
{
	struct serdes_am654 *phy = FUNC1(x);
	struct device *dev = phy->dev;
	int ret;
	u32 val;

	ret = FUNC3(phy);
	if (ret) {
		FUNC0(dev, "Failed to enable PLL\n");
		return ret;
	}

	ret = FUNC4(phy);
	if (ret) {
		FUNC0(dev, "Failed to enable TX RX\n");
		return ret;
	}

	return FUNC2(phy->cmu_ok_i_0, val, val,
					      SLEEP_TIME, PLL_LOCK_TIME);
}