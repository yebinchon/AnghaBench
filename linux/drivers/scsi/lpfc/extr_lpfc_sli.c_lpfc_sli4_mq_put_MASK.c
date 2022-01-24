#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {int host_index; int entry_count; int hba_index; int queue_id; TYPE_2__* phba; int /*<<< orphan*/  entry_size; } ;
struct lpfc_mqe {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  MQDBregaddr; } ;
struct TYPE_4__ {TYPE_1__ sli4_hba; int /*<<< orphan*/ * mbox; } ;
typedef  int /*<<< orphan*/  MAILBOX_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*,int) ; 
 int /*<<< orphan*/  lpfc_mq_doorbell_id ; 
 int /*<<< orphan*/  lpfc_mq_doorbell_num_posted ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_mqe*,struct lpfc_mqe*,int /*<<< orphan*/ ) ; 
 struct lpfc_mqe* FUNC2 (struct lpfc_queue*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC5(struct lpfc_queue *q, struct lpfc_mqe *mqe)
{
	struct lpfc_mqe *temp_mqe;
	struct lpfc_register doorbell;

	/* sanity check on queue memory */
	if (FUNC3(!q))
		return -ENOMEM;
	temp_mqe = FUNC2(q, q->host_index);

	/* If the host has not yet processed the next entry then we are done */
	if (((q->host_index + 1) % q->entry_count) == q->hba_index)
		return -ENOMEM;
	FUNC1(mqe, temp_mqe, q->entry_size);
	/* Save off the mailbox pointer for completion */
	q->phba->mbox = (MAILBOX_t *)temp_mqe;

	/* Update the host index before invoking device */
	q->host_index = ((q->host_index + 1) % q->entry_count);

	/* Ring Doorbell */
	doorbell.word0 = 0;
	FUNC0(lpfc_mq_doorbell_num_posted, &doorbell, 1);
	FUNC0(lpfc_mq_doorbell_id, &doorbell, q->queue_id);
	FUNC4(doorbell.word0, q->phba->sli4_hba.MQDBregaddr);
	return 0;
}