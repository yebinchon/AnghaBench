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
typedef  size_t u32 ;
struct tegra_pmx {size_t* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_pmx*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct tegra_pmx *pmx, u32 val, u32 bank, u32 reg)
{
	FUNC1(val, pmx->regs[bank] + reg);
	/* make sure pinmux register write completed */
	FUNC0(pmx, bank, reg);
}