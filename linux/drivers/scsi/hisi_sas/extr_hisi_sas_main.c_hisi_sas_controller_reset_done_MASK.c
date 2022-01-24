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
struct hisi_hba {TYPE_1__* hw; int /*<<< orphan*/  flags; int /*<<< orphan*/  sem; scalar_t__ reject_stp_links_msk; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_phys_state ) (struct hisi_hba*) ;int /*<<< orphan*/  (* phys_init ) (struct hisi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  HISI_SAS_RESET_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct hisi_hba *hisi_hba)
{
	struct Scsi_Host *shost = hisi_hba->shost;
	u32 state;

	/* Init and wait for PHYs to come up and all libsas event finished. */
	hisi_hba->hw->phys_init(hisi_hba);
	FUNC5(1000);
	FUNC1(hisi_hba);
	FUNC0(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

	if (hisi_hba->reject_stp_links_msk)
		FUNC4(hisi_hba);
	FUNC3(hisi_hba);
	FUNC9(&hisi_hba->sem);
	FUNC6(shost);
	FUNC0(HISI_SAS_RESET_BIT, &hisi_hba->flags);

	state = hisi_hba->hw->get_phys_state(hisi_hba);
	FUNC2(hisi_hba, state);
}