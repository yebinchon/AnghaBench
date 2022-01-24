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
struct tegra_pmx {unsigned int nbanks; int /*<<< orphan*/  pctl; int /*<<< orphan*/ ** regs; int /*<<< orphan*/ * backup_regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tegra_pmx* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct device*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct tegra_pmx *pmx = FUNC0(dev);
	u32 *backup_regs = pmx->backup_regs;
	u32 *regs;
	size_t bank_size;
	unsigned int i, k;

	for (i = 0; i < pmx->nbanks; i++) {
		bank_size = FUNC3(dev, i);
		regs = pmx->regs[i];
		for (k = 0; k < bank_size; k++)
			*backup_regs++ = FUNC2(regs++);
	}

	return FUNC1(pmx->pctl);
}