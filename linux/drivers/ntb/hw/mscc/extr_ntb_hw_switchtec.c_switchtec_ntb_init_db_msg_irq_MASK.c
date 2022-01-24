#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct switchtec_ntb {void* doorbell_irq; void* message_irq; TYPE_3__* stdev; TYPE_2__* mmio_self_dbmsg; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; TYPE_1__* mmio_part_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/ * idb_vec_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  vep_vector_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct switchtec_ntb*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct switchtec_ntb*) ; 
 int /*<<< orphan*/  switchtec_ntb_doorbell_isr ; 
 int /*<<< orphan*/  switchtec_ntb_message_isr ; 

__attribute__((used)) static int FUNC6(struct switchtec_ntb *sndev)
{
	int i;
	int rc;
	int doorbell_irq = 0;
	int message_irq = 0;
	int event_irq;
	int idb_vecs = sizeof(sndev->mmio_self_dbmsg->idb_vec_map);

	event_irq = FUNC2(&sndev->stdev->mmio_part_cfg->vep_vector_number);

	while (doorbell_irq == event_irq)
		doorbell_irq++;
	while (message_irq == doorbell_irq ||
	       message_irq == event_irq)
		message_irq++;

	FUNC0(&sndev->stdev->dev, "irqs - event: %d, db: %d, msgs: %d\n",
		event_irq, doorbell_irq, message_irq);

	for (i = 0; i < idb_vecs - 4; i++)
		FUNC3(doorbell_irq,
			 &sndev->mmio_self_dbmsg->idb_vec_map[i]);

	for (; i < idb_vecs; i++)
		FUNC3(message_irq,
			 &sndev->mmio_self_dbmsg->idb_vec_map[i]);

	sndev->doorbell_irq = FUNC4(sndev->stdev->pdev, doorbell_irq);
	sndev->message_irq = FUNC4(sndev->stdev->pdev, message_irq);

	rc = FUNC5(sndev->doorbell_irq,
			 switchtec_ntb_doorbell_isr, 0,
			 "switchtec_ntb_doorbell", sndev);
	if (rc)
		return rc;

	rc = FUNC5(sndev->message_irq,
			 switchtec_ntb_message_isr, 0,
			 "switchtec_ntb_message", sndev);
	if (rc) {
		FUNC1(sndev->doorbell_irq, sndev);
		return rc;
	}

	return 0;
}