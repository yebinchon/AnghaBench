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
struct qcom_ipq806x_sata_phy {scalar_t__ mmio; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ SATA_PHY_P0_PARAM4 ; 
 int SATA_PHY_RESET ; 
 struct qcom_ipq806x_sata_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct phy *generic_phy)
{
	struct qcom_ipq806x_sata_phy *phy = FUNC0(generic_phy);
	u32 reg;

	/* Setting PHY_RESET to 1 */
	reg = FUNC1(phy->mmio + SATA_PHY_P0_PARAM4);
	reg = reg | SATA_PHY_RESET;
	FUNC2(reg, phy->mmio + SATA_PHY_P0_PARAM4);

	return 0;
}