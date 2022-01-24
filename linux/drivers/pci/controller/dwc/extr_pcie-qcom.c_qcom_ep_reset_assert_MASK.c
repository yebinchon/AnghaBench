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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct qcom_pcie *pcie)
{
	FUNC0(pcie->reset, 1);
	FUNC1(PERST_DELAY_US, PERST_DELAY_US + 500);
}