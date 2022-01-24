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
struct qcom_pcie {scalar_t__ parf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCIE20_PARF_LTSSM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct qcom_pcie *pcie)
{
	u32 val;

	/* enable link training */
	val = FUNC1(pcie->parf + PCIE20_PARF_LTSSM);
	val |= FUNC0(8);
	FUNC2(val, pcie->parf + PCIE20_PARF_LTSSM);
}