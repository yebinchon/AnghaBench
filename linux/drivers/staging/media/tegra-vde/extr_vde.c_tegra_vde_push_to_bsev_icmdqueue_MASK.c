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
struct tegra_vde {int /*<<< orphan*/  bsev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMDQUE_WR ; 
 int FUNC0 (struct tegra_vde*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_vde*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tegra_vde *vde,
					    u32 value, bool wait_dma)
{
	FUNC1(vde, value, vde->bsev, ICMDQUE_WR);

	return FUNC0(vde, wait_dma);
}