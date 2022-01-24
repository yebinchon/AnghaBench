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
struct hisi_hba {int /*<<< orphan*/  flags; int /*<<< orphan*/  timer; TYPE_1__* hw; int /*<<< orphan*/  phy_state; int /*<<< orphan*/  sem; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_cmds_complete_timeout ) (struct hisi_hba*,int,int) ;int /*<<< orphan*/  (* get_phys_state ) (struct hisi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hisi_hba *hisi_hba)
{
	struct Scsi_Host *shost = hisi_hba->shost;

	FUNC1(&hisi_hba->sem);
	hisi_hba->phy_state = hisi_hba->hw->get_phys_state(hisi_hba);

	FUNC2(shost);
	hisi_hba->hw->wait_cmds_complete_timeout(hisi_hba, 100, 5000);

	if (FUNC6(&hisi_hba->timer))
		FUNC0(&hisi_hba->timer);

	FUNC3(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
}