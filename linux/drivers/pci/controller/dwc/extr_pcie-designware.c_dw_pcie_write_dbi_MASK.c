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
typedef  scalar_t__ u32 ;
struct dw_pcie {int /*<<< orphan*/  dev; scalar_t__ dbi_base; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_dbi ) (struct dw_pcie*,scalar_t__,scalar_t__,size_t,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,scalar_t__,scalar_t__,size_t,scalar_t__) ; 

void FUNC3(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
{
	int ret;

	if (pci->ops->write_dbi) {
		pci->ops->write_dbi(pci, pci->dbi_base, reg, size, val);
		return;
	}

	ret = FUNC1(pci->dbi_base + reg, size, val);
	if (ret)
		FUNC0(pci->dev, "Write DBI address failed\n");
}