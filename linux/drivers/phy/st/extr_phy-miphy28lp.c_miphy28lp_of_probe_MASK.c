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
struct miphy28lp_phy {int /*<<< orphan*/ * syscfg_reg; scalar_t__ sata_gen; void* tx_impedance; void* ssc; void* px_rx_pol_inv; void* osc_rdy; void* osc_force_ext; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ SATA_GEN1 ; 
 int SYSCFG_REG_MAX ; 
 void* FUNC0 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device_node *np,
			      struct miphy28lp_phy *miphy_phy)
{
	int i;
	u32 ctrlreg;

	miphy_phy->osc_force_ext =
		FUNC0(np, "st,osc-force-ext");

	miphy_phy->osc_rdy = FUNC0(np, "st,osc-rdy");

	miphy_phy->px_rx_pol_inv =
		FUNC0(np, "st,px_rx_pol_inv");

	miphy_phy->ssc = FUNC0(np, "st,ssc-on");

	miphy_phy->tx_impedance =
		FUNC0(np, "st,tx-impedance-comp");

	FUNC1(np, "st,sata-gen", &miphy_phy->sata_gen);
	if (!miphy_phy->sata_gen)
		miphy_phy->sata_gen = SATA_GEN1;

	for (i = 0; i < SYSCFG_REG_MAX; i++) {
		if (!FUNC2(np, "st,syscfg", i, &ctrlreg))
			miphy_phy->syscfg_reg[i] = ctrlreg;
	}

	return 0;
}