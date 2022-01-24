#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_sli_ring {int missbufcnt; int /*<<< orphan*/  ringno; } ;
struct TYPE_9__ {TYPE_3__* cont64; } ;
struct TYPE_10__ {int ulpBdeCount; int ulpLe; int /*<<< orphan*/  ulpCommand; TYPE_4__ un; } ;
struct lpfc_iocbq {TYPE_5__ iocb; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; void* virt; int /*<<< orphan*/  list; } ;
struct TYPE_6__ {void* bdeSize; } ;
struct TYPE_7__ {TYPE_1__ f; } ;
struct TYPE_8__ {TYPE_2__ tus; void* addrLow; void* addrHigh; } ;
typedef  TYPE_5__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_QUE_RING_BUF64_CN ; 
 void* FCELSSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  MEM_PRI ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,void*,int /*<<< orphan*/ ) ; 
 struct lpfc_iocbq* FUNC5 (struct lpfc_hba*) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_dmabuf*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct lpfc_hba *phba, struct lpfc_sli_ring *pring, int cnt)
{
	IOCB_t *icmd;
	struct lpfc_iocbq *iocb;
	struct lpfc_dmabuf *mp1, *mp2;

	cnt += pring->missbufcnt;

	/* While there are buffers to post */
	while (cnt > 0) {
		/* Allocate buffer for  command iocb */
		iocb = FUNC5(phba);
		if (iocb == NULL) {
			pring->missbufcnt = cnt;
			return cnt;
		}
		icmd = &iocb->iocb;

		/* 2 buffers can be posted per command */
		/* Allocate buffer to post */
		mp1 = FUNC2(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
		if (mp1)
		    mp1->virt = FUNC3(phba, MEM_PRI, &mp1->phys);
		if (!mp1 || !mp1->virt) {
			FUNC1(mp1);
			FUNC7(phba, iocb);
			pring->missbufcnt = cnt;
			return cnt;
		}

		FUNC0(&mp1->list);
		/* Allocate buffer to post */
		if (cnt > 1) {
			mp2 = FUNC2(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
			if (mp2)
				mp2->virt = FUNC3(phba, MEM_PRI,
							    &mp2->phys);
			if (!mp2 || !mp2->virt) {
				FUNC1(mp2);
				FUNC4(phba, mp1->virt, mp1->phys);
				FUNC1(mp1);
				FUNC7(phba, iocb);
				pring->missbufcnt = cnt;
				return cnt;
			}

			FUNC0(&mp2->list);
		} else {
			mp2 = NULL;
		}

		icmd->un.cont64[0].addrHigh = FUNC9(mp1->phys);
		icmd->un.cont64[0].addrLow = FUNC10(mp1->phys);
		icmd->un.cont64[0].tus.f.bdeSize = FCELSSIZE;
		icmd->ulpBdeCount = 1;
		cnt--;
		if (mp2) {
			icmd->un.cont64[1].addrHigh = FUNC9(mp2->phys);
			icmd->un.cont64[1].addrLow = FUNC10(mp2->phys);
			icmd->un.cont64[1].tus.f.bdeSize = FCELSSIZE;
			cnt--;
			icmd->ulpBdeCount = 2;
		}

		icmd->ulpCommand = CMD_QUE_RING_BUF64_CN;
		icmd->ulpLe = 1;

		if (FUNC6(phba, pring->ringno, iocb, 0) ==
		    IOCB_ERROR) {
			FUNC4(phba, mp1->virt, mp1->phys);
			FUNC1(mp1);
			cnt++;
			if (mp2) {
				FUNC4(phba, mp2->virt, mp2->phys);
				FUNC1(mp2);
				cnt++;
			}
			FUNC7(phba, iocb);
			pring->missbufcnt = cnt;
			return cnt;
		}
		FUNC8(phba, pring, mp1);
		if (mp2)
			FUNC8(phba, pring, mp2);
	}
	pring->missbufcnt = 0;
	return 0;
}