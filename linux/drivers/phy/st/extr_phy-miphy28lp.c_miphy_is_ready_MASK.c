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
typedef  int u8 ;
struct miphy28lp_phy {scalar_t__ type; scalar_t__ base; } ;

/* Variables and functions */
 int EBUSY ; 
 int HFC_PLL ; 
 int HFC_RDY ; 
 int HZ ; 
 scalar_t__ MIPHY_STATUS_1 ; 
 int PHY_RDY ; 
 scalar_t__ PHY_TYPE_SATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int jiffies ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct miphy28lp_phy *miphy_phy)
{
	unsigned long finish = jiffies + 5 * HZ;
	u8 mask = HFC_PLL | HFC_RDY;
	u8 val;

	/*
	 * For PCIe and USB3 check only that PLL and HFC are ready
	 * For SATA check also that phy is ready!
	 */
	if (miphy_phy->type == PHY_TYPE_SATA)
		mask |= PHY_RDY;

	do {
		val = FUNC1(miphy_phy->base + MIPHY_STATUS_1);
		if ((val & mask) != mask)
			FUNC0();
		else
			return 0;
	} while (!FUNC2(jiffies, finish));

	return -EBUSY;
}