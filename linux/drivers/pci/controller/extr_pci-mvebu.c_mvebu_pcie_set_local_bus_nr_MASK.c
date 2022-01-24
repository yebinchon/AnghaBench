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
struct mvebu_pcie_port {int dummy; } ;

/* Variables and functions */
 int PCIE_STAT_BUS ; 
 int /*<<< orphan*/  PCIE_STAT_OFF ; 
 int FUNC0 (struct mvebu_pcie_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvebu_pcie_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mvebu_pcie_port *port, int nr)
{
	u32 stat;

	stat = FUNC0(port, PCIE_STAT_OFF);
	stat &= ~PCIE_STAT_BUS;
	stat |= nr << 8;
	FUNC1(port, stat, PCIE_STAT_OFF);
}