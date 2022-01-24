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
struct miphy28lp_phy {int /*<<< orphan*/ * syscfg_reg; int /*<<< orphan*/  osc_rdy; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int HZ ; 
 int MIPHY_OSC_RDY ; 
 size_t SYSCFG_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct miphy28lp_phy *miphy_phy)
{
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	unsigned long finish = jiffies + 5 * HZ;
	u32 val;

	if (!miphy_phy->osc_rdy)
		return 0;

	if (!miphy_phy->syscfg_reg[SYSCFG_STATUS])
		return -EINVAL;

	do {
		FUNC1(miphy_dev->regmap,
				miphy_phy->syscfg_reg[SYSCFG_STATUS], &val);

		if ((val & MIPHY_OSC_RDY) != MIPHY_OSC_RDY)
			FUNC0();
		else
			return 0;
	} while (!FUNC2(jiffies, finish));

	return -EBUSY;
}