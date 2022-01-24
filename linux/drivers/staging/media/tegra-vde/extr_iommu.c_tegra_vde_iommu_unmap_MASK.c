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
struct tegra_vde {int /*<<< orphan*/  iova; int /*<<< orphan*/  domain; } ;
struct iova {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iova*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iova*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct iova*) ; 

void FUNC5(struct tegra_vde *vde, struct iova *iova)
{
	unsigned long shift = FUNC3(&vde->iova);
	unsigned long size = FUNC4(iova) << shift;
	dma_addr_t addr = FUNC2(&vde->iova, iova);

	FUNC1(vde->domain, addr, size);
	FUNC0(&vde->iova, iova);
}