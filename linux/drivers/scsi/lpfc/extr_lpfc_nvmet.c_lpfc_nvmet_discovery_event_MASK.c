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
typedef  scalar_t__ uint32_t ;
struct nvmet_fc_target_port {struct lpfc_nvmet_tgtport* private; } ;
struct lpfc_nvmet_tgtport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_NVME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct nvmet_fc_target_port *tgtport)
{
	struct lpfc_nvmet_tgtport *tgtp;
	struct lpfc_hba *phba;
	uint32_t rc;

	tgtp = tgtport->private;
	phba = tgtp->phba;

	rc = FUNC0(phba->pport, 0);
	FUNC1(phba, KERN_ERR, LOG_NVME,
			"6420 NVMET subsystem change: Notification %s\n",
			(rc) ? "Failed" : "Sent");
}