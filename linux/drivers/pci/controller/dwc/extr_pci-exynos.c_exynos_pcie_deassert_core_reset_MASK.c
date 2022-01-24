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
typedef  int u32 ;
struct exynos_pcie {TYPE_1__* mem_res; } ;
struct TYPE_2__ {int /*<<< orphan*/  elbi_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_APP_INIT_RESET ; 
 int /*<<< orphan*/  PCIE_CORE_RESET ; 
 int PCIE_CORE_RESET_ENABLE ; 
 int /*<<< orphan*/  PCIE_NONSTICKY_RESET ; 
 int /*<<< orphan*/  PCIE_STICKY_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct exynos_pcie *ep)
{
	u32 val;

	val = FUNC0(ep->mem_res->elbi_base, PCIE_CORE_RESET);
	val |= PCIE_CORE_RESET_ENABLE;

	FUNC1(ep->mem_res->elbi_base, val, PCIE_CORE_RESET);
	FUNC1(ep->mem_res->elbi_base, 1, PCIE_STICKY_RESET);
	FUNC1(ep->mem_res->elbi_base, 1, PCIE_NONSTICKY_RESET);
	FUNC1(ep->mem_res->elbi_base, 1, PCIE_APP_INIT_RESET);
	FUNC1(ep->mem_res->elbi_base, 0, PCIE_APP_INIT_RESET);
}