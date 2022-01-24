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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct dw_pcie {TYPE_1__ pp; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct dw_pcie*,struct platform_device*) ; 
 int /*<<< orphan*/  kirin_pcie_host_ops ; 

__attribute__((used)) static int FUNC2(struct dw_pcie *pci,
			       struct platform_device *pdev)
{
	int ret;

	ret = FUNC1(pci, pdev);
	if (ret)
		return ret;

	pci->pp.ops = &kirin_pcie_host_ops;

	return FUNC0(&pci->pp);
}