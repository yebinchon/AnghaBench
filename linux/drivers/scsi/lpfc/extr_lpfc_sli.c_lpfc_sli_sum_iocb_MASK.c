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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {int last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ sli; } ;
typedef  int /*<<< orphan*/  lpfc_ctx_cmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lpfc_iocbq*,struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct lpfc_vport *vport, uint16_t tgt_id, uint64_t lun_id,
		  lpfc_ctx_cmd ctx_cmd)
{
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_iocbq *iocbq;
	int sum, i;

	FUNC1(&phba->hbalock);
	for (i = 1, sum = 0; i <= phba->sli.last_iotag; i++) {
		iocbq = phba->sli.iocbq_lookup[i];

		if (FUNC0 (iocbq, vport, tgt_id, lun_id,
						ctx_cmd) == 0)
			sum++;
	}
	FUNC2(&phba->hbalock);

	return sum;
}