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
struct dw_pcie {int dummy; } ;
struct artpec6_pcie {scalar_t__ variant; struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_F_ASPM_CTRL_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ACK_N_FTS_MASK ; 
 scalar_t__ ARTPEC7 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FAST_TRAINING_SEQ_MASK ; 
 int /*<<< orphan*/  PCIE_LINK_WIDTH_SPEED_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct artpec6_pcie *artpec6_pcie)
{
	struct dw_pcie *pci = artpec6_pcie->pci;
	u32 val;

	if (artpec6_pcie->variant != ARTPEC7)
		return;

	/*
	 * Increase the N_FTS (Number of Fast Training Sequences)
	 * to be transmitted when transitioning from L0s to L0.
	 */
	val = FUNC2(pci, ACK_F_ASPM_CTRL_OFF);
	val &= ~ACK_N_FTS_MASK;
	val |= FUNC0(180);
	FUNC3(pci, ACK_F_ASPM_CTRL_OFF, val);

	/*
	 * Set the Number of Fast Training Sequences that the core
	 * advertises as its N_FTS during Gen2 or Gen3 link training.
	 */
	val = FUNC2(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
	val &= ~FAST_TRAINING_SEQ_MASK;
	val |= FUNC1(180);
	FUNC3(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
}