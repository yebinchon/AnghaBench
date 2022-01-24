#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct serv_parm {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/ * vpi_ids; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  list; int /*<<< orphan*/  virt; } ;
struct TYPE_13__ {int bdeSize; } ;
struct TYPE_14__ {TYPE_2__ f; } ;
struct TYPE_15__ {int /*<<< orphan*/  addrLow; int /*<<< orphan*/  addrHigh; TYPE_3__ tus; } ;
struct TYPE_16__ {TYPE_4__ sp64; } ;
struct TYPE_17__ {int /*<<< orphan*/  vpi; TYPE_5__ un; } ;
struct TYPE_18__ {TYPE_6__ varRdSparm; } ;
struct TYPE_19__ {TYPE_7__ un; void* mbxCommand; int /*<<< orphan*/  mbxOwner; } ;
struct TYPE_12__ {TYPE_8__ mb; } ;
struct TYPE_20__ {struct lpfc_dmabuf* ctx_buf; TYPE_1__ u; } ;
typedef  TYPE_8__ MAILBOX_t ;
typedef  TYPE_9__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 void* MBX_READ_SPARM64 ; 
 int /*<<< orphan*/  OWN_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb, int vpi)
{
	struct lpfc_dmabuf *mp;
	MAILBOX_t *mb;

	mb = &pmb->u.mb;
	FUNC5(pmb, 0, sizeof (LPFC_MBOXQ_t));

	mb->mbxOwner = OWN_HOST;

	/* Get a buffer to hold the HBAs Service Parameters */

	mp = FUNC2(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
	if (mp)
		mp->virt = FUNC3(phba, 0, &mp->phys);
	if (!mp || !mp->virt) {
		FUNC1(mp);
		mb->mbxCommand = MBX_READ_SPARM64;
		/* READ_SPARAM: no buffers */
		FUNC4(phba, KERN_WARNING, LOG_MBOX,
			        "0301 READ_SPARAM: no buffers\n");
		return (1);
	}
	FUNC0(&mp->list);
	mb->mbxCommand = MBX_READ_SPARM64;
	mb->un.varRdSparm.un.sp64.tus.f.bdeSize = sizeof (struct serv_parm);
	mb->un.varRdSparm.un.sp64.addrHigh = FUNC6(mp->phys);
	mb->un.varRdSparm.un.sp64.addrLow = FUNC7(mp->phys);
	if (phba->sli_rev >= LPFC_SLI_REV3)
		mb->un.varRdSparm.vpi = phba->vpi_ids[vpi];

	/* save address for completion */
	pmb->ctx_buf = mp;

	return (0);
}