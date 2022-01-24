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
struct uio_pruss_dev {int /*<<< orphan*/  pruss_clk; struct uio_pruss_dev* info; scalar_t__ sram_vaddr; int /*<<< orphan*/  sram_pool; int /*<<< orphan*/  ddr_paddr; scalar_t__ ddr_vaddr; int /*<<< orphan*/  prussio_vaddr; struct uio_pruss_dev* name; } ;
struct uio_info {int /*<<< orphan*/  pruss_clk; struct uio_info* info; scalar_t__ sram_vaddr; int /*<<< orphan*/  sram_pool; int /*<<< orphan*/  ddr_paddr; scalar_t__ ddr_vaddr; int /*<<< orphan*/  prussio_vaddr; struct uio_info* name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MAX_PRUSS_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extram_pool_sz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uio_pruss_dev*) ; 
 int /*<<< orphan*/  sram_pool_sz ; 
 int /*<<< orphan*/  FUNC6 (struct uio_pruss_dev*) ; 

__attribute__((used)) static void FUNC7(struct device *dev, struct uio_pruss_dev *gdev)
{
	int cnt;
	struct uio_info *p = gdev->info;

	for (cnt = 0; cnt < MAX_PRUSS_EVT; cnt++, p++) {
		FUNC6(p);
		FUNC5(p->name);
	}
	FUNC4(gdev->prussio_vaddr);
	if (gdev->ddr_vaddr) {
		FUNC2(dev, extram_pool_sz, gdev->ddr_vaddr,
			gdev->ddr_paddr);
	}
	if (gdev->sram_vaddr)
		FUNC3(gdev->sram_pool,
			      gdev->sram_vaddr,
			      sram_pool_sz);
	FUNC5(gdev->info);
	FUNC0(gdev->pruss_clk);
	FUNC1(gdev->pruss_clk);
	FUNC5(gdev);
}