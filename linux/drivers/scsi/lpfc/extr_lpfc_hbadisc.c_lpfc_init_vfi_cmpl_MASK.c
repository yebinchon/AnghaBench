#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; TYPE_1__ sli4_hba; } ;
struct TYPE_8__ {scalar_t__ mbxStatus; } ;
struct TYPE_9__ {TYPE_2__ mb; } ;
struct TYPE_10__ {TYPE_3__ u; struct lpfc_vport* vport; } ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_0 ; 
 scalar_t__ MBX_VFI_IN_USE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
	struct lpfc_vport *vport = mboxq->vport;

	/*
	 * VFI not supported on interface type 0, just do the flogi
	 * Also continue if the VFI is in use - just use the same one.
	 */
	if (mboxq->u.mb.mbxStatus &&
	    (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) !=
			LPFC_SLI_INTF_IF_TYPE_0) &&
	    mboxq->u.mb.mbxStatus != MBX_VFI_IN_USE) {
		FUNC2(vport, KERN_ERR,
				LOG_MBOX,
				"2891 Init VFI mailbox failed 0x%x\n",
				mboxq->u.mb.mbxStatus);
		FUNC4(mboxq, phba->mbox_mem_pool);
		FUNC3(vport, FC_VPORT_FAILED);
		return;
	}

	FUNC1(vport);
	FUNC4(mboxq, phba->mbox_mem_pool);
	return;
}