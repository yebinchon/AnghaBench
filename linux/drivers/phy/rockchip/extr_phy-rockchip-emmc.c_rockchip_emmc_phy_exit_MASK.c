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
struct rockchip_emmc_phy {int /*<<< orphan*/  emmcclk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_emmc_phy* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct rockchip_emmc_phy *rk_phy = FUNC1(phy);

	FUNC0(rk_phy->emmcclk);

	return 0;
}