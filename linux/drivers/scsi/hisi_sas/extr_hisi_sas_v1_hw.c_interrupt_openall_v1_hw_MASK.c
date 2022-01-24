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
struct hisi_hba {int n_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT0 ; 
 int /*<<< orphan*/  CHL_INT0_MSK ; 
 int CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK ; 
 int /*<<< orphan*/  CHL_INT1 ; 
 int /*<<< orphan*/  CHL_INT1_MSK ; 
 int /*<<< orphan*/  CHL_INT2 ; 
 int /*<<< orphan*/  CHL_INT2_MSK ; 
 int FUNC0 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hisi_hba *hisi_hba)
{
	int i;
	u32 val;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		/* Clear interrupt status */
		val = FUNC0(hisi_hba, i, CHL_INT0);
		FUNC1(hisi_hba, i, CHL_INT0, val);
		val = FUNC0(hisi_hba, i, CHL_INT1);
		FUNC1(hisi_hba, i, CHL_INT1, val);
		val = FUNC0(hisi_hba, i, CHL_INT2);
		FUNC1(hisi_hba, i, CHL_INT2, val);

		/* Unmask interrupt */
		FUNC1(hisi_hba, i, CHL_INT0_MSK, 0x3ce3ee);
		FUNC1(hisi_hba, i, CHL_INT1_MSK, 0x17fff);
		FUNC1(hisi_hba, i, CHL_INT2_MSK, 0x8000012a);

		/* bypass chip bug mask abnormal intr */
		FUNC1(hisi_hba, i, CHL_INT0_MSK,
				0x3fffff & ~CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK);
	}

	return 0;
}