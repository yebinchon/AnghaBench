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
typedef  int uint32_t ;
struct lpfc_vport {scalar_t__ port_state; int /*<<< orphan*/  fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ sli_rev; TYPE_1__* pport; int /*<<< orphan*/  HAregaddr; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ABORT_DISCOVERY ; 
 int HA_LATT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 scalar_t__ LPFC_CLEAR_LA ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 struct Scsi_Host* FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC3(vport);
	struct lpfc_hba  *phba = vport->phba;
	uint32_t ha_copy;

	if (vport->port_state >= LPFC_VPORT_READY ||
	    phba->link_state == LPFC_LINK_DOWN ||
	    phba->sli_rev > LPFC_SLI_REV3)
		return 0;

	/* Read the HBA Host Attention Register */
	if (FUNC2(phba->HAregaddr, &ha_copy))
		return 1;

	if (!(ha_copy & HA_LATT))
		return 0;

	/* Pending Link Event during Discovery */
	FUNC1(vport, KERN_ERR, LOG_DISCOVERY,
			 "0237 Pending Link Event during "
			 "Discovery: State x%x\n",
			 phba->pport->port_state);

	/* CLEAR_LA should re-enable link attention events and
	 * we should then immediately take a LATT event. The
	 * LATT processing should call lpfc_linkdown() which
	 * will cleanup any left over in-progress discovery
	 * events.
	 */
	FUNC4(shost->host_lock);
	vport->fc_flag |= FC_ABORT_DISCOVERY;
	FUNC5(shost->host_lock);

	if (phba->link_state != LPFC_CLEAR_LA)
		FUNC0(phba, vport);

	return 1;
}