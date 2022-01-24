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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int PCI_CFG_SPACE_EXP_SIZE ; 
 int PCI_CFG_SPACE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct dw_pcie*,int) ; 

__attribute__((used)) static u16 FUNC3(struct dw_pcie *pci, u16 start,
					    u8 cap)
{
	u32 header;
	int ttl;
	int pos = PCI_CFG_SPACE_SIZE;

	/* minimum 8 bytes per capability */
	ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;

	if (start)
		pos = start;

	header = FUNC2(pci, pos);
	/*
	 * If we have no capabilities, this is indicated by cap ID,
	 * cap version and next pointer all being 0.
	 */
	if (header == 0)
		return 0;

	while (ttl-- > 0) {
		if (FUNC0(header) == cap && pos != start)
			return pos;

		pos = FUNC1(header);
		if (pos < PCI_CFG_SPACE_SIZE)
			break;

		header = FUNC2(pci, pos);
	}

	return 0;
}