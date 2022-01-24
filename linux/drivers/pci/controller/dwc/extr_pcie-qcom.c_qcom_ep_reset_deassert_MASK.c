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
struct qcom_pcie {int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 scalar_t__ PERST_DELAY_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct qcom_pcie *pcie)
{
	/* Ensure that PERST has been asserted for at least 100 ms */
	FUNC1(100);
	FUNC0(pcie->reset, 0);
	FUNC2(PERST_DELAY_US, PERST_DELAY_US + 500);
}