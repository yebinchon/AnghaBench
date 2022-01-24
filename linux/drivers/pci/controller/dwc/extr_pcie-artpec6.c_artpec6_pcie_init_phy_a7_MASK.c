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
struct dw_pcie {int /*<<< orphan*/  dev; } ;
struct artpec6_pcie {struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOCCFG ; 
 int NOCCFG_ENABLE_CLK_PCIE ; 
 int NOCCFG_POWER_PCIE_IDLEREQ ; 
 int /*<<< orphan*/  PCIECFG ; 
 int PCIECFG_PCLK_ENABLE ; 
 int PCIECFG_REFCLKSEL ; 
 int PCIECFG_RISRCREN ; 
 int /*<<< orphan*/  PCIESTAT ; 
 int PCIESTAT_EXTREFCLK ; 
 int FUNC0 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_pcie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct artpec6_pcie *artpec6_pcie)
{
	struct dw_pcie *pci = artpec6_pcie->pci;
	u32 val;
	bool extrefclk;

	/* Check if external reference clock is connected */
	val = FUNC0(artpec6_pcie, PCIESTAT);
	extrefclk = !!(val & PCIESTAT_EXTREFCLK);
	FUNC2(pci->dev, "Using reference clock: %s\n",
		extrefclk ? "external" : "internal");

	val = FUNC0(artpec6_pcie, PCIECFG);
	val |=  PCIECFG_RISRCREN |	/* Receiver term. 50 Ohm */
		PCIECFG_PCLK_ENABLE;
	if (extrefclk)
		val |= PCIECFG_REFCLKSEL;
	else
		val &= ~PCIECFG_REFCLKSEL;
	FUNC1(artpec6_pcie, PCIECFG, val);
	FUNC3(10, 20);

	val = FUNC0(artpec6_pcie, NOCCFG);
	val |= NOCCFG_ENABLE_CLK_PCIE;
	FUNC1(artpec6_pcie, NOCCFG, val);
	FUNC3(20, 30);

	val = FUNC0(artpec6_pcie, NOCCFG);
	val &= ~NOCCFG_POWER_PCIE_IDLEREQ;
	FUNC1(artpec6_pcie, NOCCFG, val);
}