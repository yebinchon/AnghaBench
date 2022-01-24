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
struct altera_pcie {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int RP_RXCPL_EOP ; 
 int /*<<< orphan*/  RP_RXCPL_REG0 ; 
 int /*<<< orphan*/  RP_RXCPL_REG1 ; 
 int RP_RXCPL_SOP ; 
 int /*<<< orphan*/  RP_RXCPL_STATUS ; 
 int FUNC0 (int) ; 
 int TLP_LOOP ; 
 int FUNC1 (struct altera_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct altera_pcie *pcie, u32 *value)
{
	int i;
	bool sop = false;
	u32 ctrl;
	u32 reg0, reg1;
	u32 comp_status = 1;

	/*
	 * Minimum 2 loops to read TLP headers and 1 loop to read data
	 * payload.
	 */
	for (i = 0; i < TLP_LOOP; i++) {
		ctrl = FUNC1(pcie, RP_RXCPL_STATUS);
		if ((ctrl & RP_RXCPL_SOP) || (ctrl & RP_RXCPL_EOP) || sop) {
			reg0 = FUNC1(pcie, RP_RXCPL_REG0);
			reg1 = FUNC1(pcie, RP_RXCPL_REG1);

			if (ctrl & RP_RXCPL_SOP) {
				sop = true;
				comp_status = FUNC0(reg1);
			}

			if (ctrl & RP_RXCPL_EOP) {
				if (comp_status)
					return PCIBIOS_DEVICE_NOT_FOUND;

				if (value)
					*value = reg0;

				return PCIBIOS_SUCCESSFUL;
			}
		}
		FUNC2(5);
	}

	return PCIBIOS_DEVICE_NOT_FOUND;
}