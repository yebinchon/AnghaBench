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
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int PCI_CFG_SPACE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct dw_pcie *pci, int cap)
{
	u32 header;
	int pos = PCI_CFG_SPACE_SIZE;

	while (pos) {
		header = FUNC2(pci, pos);
		if (FUNC0(header) == cap)
			return pos;

		pos = FUNC1(header);
		if (!pos)
			break;
	}

	return 0;
}