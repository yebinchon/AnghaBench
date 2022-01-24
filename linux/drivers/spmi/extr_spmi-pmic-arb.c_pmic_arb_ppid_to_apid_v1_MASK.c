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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct spmi_pmic_arb {size_t* ppid_to_apid; TYPE_1__* apid_data; scalar_t__ cnfg; int /*<<< orphan*/  mapping_table_valid; int /*<<< orphan*/ * mapping_table; } ;
struct TYPE_2__ {size_t ppid; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 size_t PMIC_ARB_APID_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int SPMI_MAPPING_TABLE_TREE_DEPTH ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spmi_pmic_arb *pmic_arb, u16 ppid)
{
	u32 *mapping_table = pmic_arb->mapping_table;
	int index = 0, i;
	u16 apid_valid;
	u16 apid;
	u32 data;

	apid_valid = pmic_arb->ppid_to_apid[ppid];
	if (apid_valid & PMIC_ARB_APID_VALID) {
		apid = apid_valid & ~PMIC_ARB_APID_VALID;
		return apid;
	}

	for (i = 0; i < SPMI_MAPPING_TABLE_TREE_DEPTH; ++i) {
		if (!FUNC8(index, pmic_arb->mapping_table_valid))
			mapping_table[index] = FUNC7(pmic_arb->cnfg +
						FUNC6(index));

		data = mapping_table[index];

		if (ppid & FUNC0(FUNC1(data))) {
			if (FUNC4(data)) {
				index = FUNC5(data);
			} else {
				apid = FUNC5(data);
				pmic_arb->ppid_to_apid[ppid]
					= apid | PMIC_ARB_APID_VALID;
				pmic_arb->apid_data[apid].ppid = ppid;
				return apid;
			}
		} else {
			if (FUNC2(data)) {
				index = FUNC3(data);
			} else {
				apid = FUNC3(data);
				pmic_arb->ppid_to_apid[ppid]
					= apid | PMIC_ARB_APID_VALID;
				pmic_arb->apid_data[apid].ppid = ppid;
				return apid;
			}
		}
	}

	return -ENODEV;
}