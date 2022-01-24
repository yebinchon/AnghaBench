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
struct mt7621_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RALINK_PCI_CONFIG_ADDR ; 
 int /*<<< orphan*/  RALINK_PCI_CONFIG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7621_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mt7621_pcie *pcie, unsigned int dev,
			 u32 reg, u32 val)
{
	u32 address = FUNC0(0, dev, 0, reg);

	FUNC1(pcie, address, RALINK_PCI_CONFIG_ADDR);
	FUNC1(pcie, val, RALINK_PCI_CONFIG_DATA);
}