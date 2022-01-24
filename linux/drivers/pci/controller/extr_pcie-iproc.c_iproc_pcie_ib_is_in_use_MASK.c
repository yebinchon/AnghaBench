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
typedef  int u32 ;
struct iproc_pcie_ib_map {int /*<<< orphan*/  nr_sizes; } ;
struct iproc_pcie {struct iproc_pcie_ib_map* ib_map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPROC_PCIE_IARR0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct iproc_pcie *pcie,
					   int region_idx)
{
	const struct iproc_pcie_ib_map *ib_map = &pcie->ib_map[region_idx];
	u32 val;

	val = FUNC2(pcie, FUNC1(IPROC_PCIE_IARR0, region_idx));

	return !!(val & (FUNC0(ib_map->nr_sizes) - 1));
}