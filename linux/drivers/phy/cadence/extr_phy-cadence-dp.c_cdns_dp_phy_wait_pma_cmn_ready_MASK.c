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
struct cdns_dp_phy {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ PHY_PMA_CMN_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cdns_dp_phy *cdns_phy)
{
	unsigned int reg;
	int ret;

	ret = FUNC1(cdns_phy->base + PHY_PMA_CMN_READY, reg,
				 reg & 1, 0, 500);
	if (ret == -ETIMEDOUT)
		FUNC0(cdns_phy->dev,
			"timeout waiting for PMA common ready\n");
}