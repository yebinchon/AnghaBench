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
struct hisi_hba {int intr_coal_ticks; int intr_coal_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_COAL_EN ; 
 int /*<<< orphan*/  OQ_INT_COAL_CNT ; 
 int /*<<< orphan*/  OQ_INT_COAL_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 

__attribute__((used)) static void FUNC3(struct hisi_hba *hisi_hba)
{
	/* config those registers between enable and disable PHYs */
	FUNC0(hisi_hba);

	if (hisi_hba->intr_coal_ticks == 0 ||
	    hisi_hba->intr_coal_count == 0) {
		FUNC1(hisi_hba, INT_COAL_EN, 0x1);
		FUNC1(hisi_hba, OQ_INT_COAL_TIME, 0x1);
		FUNC1(hisi_hba, OQ_INT_COAL_CNT, 0x1);
	} else {
		FUNC1(hisi_hba, INT_COAL_EN, 0x3);
		FUNC1(hisi_hba, OQ_INT_COAL_TIME,
				 hisi_hba->intr_coal_ticks);
		FUNC1(hisi_hba, OQ_INT_COAL_CNT,
				 hisi_hba->intr_coal_count);
	}
	FUNC2(hisi_hba);
}