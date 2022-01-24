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
struct artpec6_pcie {int variant; } ;

/* Variables and functions */
#define  ARTPEC6 129 
#define  ARTPEC7 128 
 int /*<<< orphan*/  PCIECFG ; 
 int /*<<< orphan*/  PCIECFG_CORE_RESET_REQ ; 
 int /*<<< orphan*/  PCIECFG_NOC_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct artpec6_pcie *artpec6_pcie)
{
	u32 val;

	val = FUNC0(artpec6_pcie, PCIECFG);
	switch (artpec6_pcie->variant) {
	case ARTPEC6:
		val |= PCIECFG_CORE_RESET_REQ;
		break;
	case ARTPEC7:
		val &= ~PCIECFG_NOC_RESET;
		break;
	}
	FUNC1(artpec6_pcie, PCIECFG, val);
}