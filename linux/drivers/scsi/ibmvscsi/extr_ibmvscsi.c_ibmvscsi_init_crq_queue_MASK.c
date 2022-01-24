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
struct viosrp_crq {int dummy; } ;
struct vio_dev {int irq; int /*<<< orphan*/  unit_address; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  srp_task; } ;
struct crq_queue {int size; struct viosrp_crq* msgs; int /*<<< orphan*/  msg_token; int /*<<< orphan*/  lock; scalar_t__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_BUSY ; 
 int H_CLOSED ; 
 int /*<<< orphan*/  H_FREE_CRQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  H_REG_CRQ ; 
 int H_RESOURCE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct viosrp_crq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvscsi_handle_event ; 
 int FUNC9 (struct crq_queue*,struct ibmvscsi_host_data*) ; 
 scalar_t__ ibmvscsi_task ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC19(struct crq_queue *queue,
				   struct ibmvscsi_host_data *hostdata,
				   int max_requests)
{
	int rc;
	int retrc;
	struct vio_dev *vdev = FUNC17(hostdata->dev);

	queue->msgs = (struct viosrp_crq *)FUNC8(GFP_KERNEL);

	if (!queue->msgs)
		goto malloc_failed;
	queue->size = PAGE_SIZE / sizeof(*queue->msgs);

	queue->msg_token = FUNC3(hostdata->dev, queue->msgs,
					  queue->size * sizeof(*queue->msgs),
					  DMA_BIDIRECTIONAL);

	if (FUNC4(hostdata->dev, queue->msg_token))
		goto map_failed;

	FUNC7();
	FUNC13(hostdata);

	retrc = rc = FUNC11(H_REG_CRQ,
				vdev->unit_address,
				queue->msg_token, PAGE_SIZE);
	if (rc == H_RESOURCE)
		/* maybe kexecing and resource is busy. try a reset */
		rc = FUNC9(queue,
					      hostdata);

	if (rc == H_CLOSED) {
		/* Adapter is good, but other end is not ready */
		FUNC2(hostdata->dev, "Partner adapter not ready\n");
		retrc = 0;
	} else if (rc != 0) {
		FUNC2(hostdata->dev, "Error %d opening adapter\n", rc);
		goto reg_crq_failed;
	}

	queue->cur = 0;
	FUNC14(&queue->lock);

	FUNC15(&hostdata->srp_task, (void *)ibmvscsi_task,
		     (unsigned long)hostdata);

	if (FUNC12(vdev->irq,
			ibmvscsi_handle_event,
			0, "ibmvscsi", (void *)hostdata) != 0) {
		FUNC1(hostdata->dev, "couldn't register irq 0x%x\n",
			vdev->irq);
		goto req_irq_failed;
	}

	rc = FUNC18(vdev);
	if (rc != 0) {
		FUNC1(hostdata->dev, "Error %d enabling interrupts!!!\n", rc);
		goto req_irq_failed;
	}

	return retrc;

      req_irq_failed:
	FUNC16(&hostdata->srp_task);
	rc = 0;
	do {
		if (rc)
			FUNC10(100);
		rc = FUNC11(H_FREE_CRQ, vdev->unit_address);
	} while ((rc == H_BUSY) || (FUNC0(rc)));
      reg_crq_failed:
	FUNC5(hostdata->dev,
			 queue->msg_token,
			 queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
      map_failed:
	FUNC6((unsigned long)queue->msgs);
      malloc_failed:
	return -1;
}