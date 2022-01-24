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
typedef  unsigned long u32 ;
struct ufs_hba {int quirks; unsigned long outstanding_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_UTP_TRANSFER_REQ_DOOR_BELL ; 
 int UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,unsigned long) ; 
 scalar_t__ FUNC1 (struct ufs_hba*) ; 
 unsigned long FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC4(struct ufs_hba *hba)
{
	unsigned long completed_reqs;
	u32 tr_doorbell;

	/* Resetting interrupt aggregation counters first and reading the
	 * DOOR_BELL afterward allows us to handle all the completed requests.
	 * In order to prevent other interrupts starvation the DB is read once
	 * after reset. The down side of this solution is the possibility of
	 * false interrupt if device completes another request after resetting
	 * aggregation and before reading the DB.
	 */
	if (FUNC1(hba) &&
	    !(hba->quirks & UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR))
		FUNC3(hba);

	tr_doorbell = FUNC2(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
	completed_reqs = tr_doorbell ^ hba->outstanding_reqs;

	FUNC0(hba, completed_reqs);
}