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
typedef  int u8 ;
typedef  int u16 ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAPABILITY_LIST ; 
 int FUNC0 (struct dw_pcie*,int,int) ; 
 int FUNC1 (struct dw_pcie*,int /*<<< orphan*/ ) ; 

u8 FUNC2(struct dw_pcie *pci, u8 cap)
{
	u8 next_cap_ptr;
	u16 reg;

	reg = FUNC1(pci, PCI_CAPABILITY_LIST);
	next_cap_ptr = (reg & 0x00ff);

	return FUNC0(pci, next_cap_ptr, cap);
}