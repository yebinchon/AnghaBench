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
struct rockchip_pcie {int dummy; } ;

/* Variables and functions */
 int PCIE_CLIENT_INT_CLI ; 
 int /*<<< orphan*/  PCIE_CLIENT_INT_MASK ; 
 scalar_t__ PCIE_CORE_INT ; 
 int /*<<< orphan*/  PCIE_CORE_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rockchip_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rockchip_pcie *rockchip)
{
	FUNC1(rockchip, (PCIE_CLIENT_INT_CLI << 16) &
			    (~PCIE_CLIENT_INT_CLI), PCIE_CLIENT_INT_MASK);
	FUNC1(rockchip, (u32)(~PCIE_CORE_INT),
			    PCIE_CORE_INT_MASK);

	FUNC0(rockchip);
}