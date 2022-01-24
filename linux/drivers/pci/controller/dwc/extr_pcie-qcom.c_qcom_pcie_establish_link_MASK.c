#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qcom_pcie {TYPE_1__* ops; struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ltssm_enable ) (struct qcom_pcie*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dw_pcie*) ; 
 int FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_pcie*) ; 

__attribute__((used)) static int FUNC3(struct qcom_pcie *pcie)
{
	struct dw_pcie *pci = pcie->pci;

	if (FUNC0(pci))
		return 0;

	/* Enable Link Training state machine */
	if (pcie->ops->ltssm_enable)
		pcie->ops->ltssm_enable(pcie);

	return FUNC1(pci);
}