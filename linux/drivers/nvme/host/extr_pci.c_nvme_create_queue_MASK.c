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
typedef  int u16 ;
struct nvme_queue {int cq_vector; int /*<<< orphan*/  flags; struct nvme_dev* dev; } ;
struct nvme_dev {int num_vecs; int /*<<< orphan*/  online_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_DELETE_ERROR ; 
 int /*<<< orphan*/  NVMEQ_ENABLED ; 
 int /*<<< orphan*/  NVMEQ_POLLED ; 
 int FUNC0 (struct nvme_dev*,int,struct nvme_queue*,int) ; 
 int FUNC1 (struct nvme_dev*,int,struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_queue*,int) ; 
 int FUNC6 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nvme_queue *nvmeq, int qid, bool polled)
{
	struct nvme_dev *dev = nvmeq->dev;
	int result;
	u16 vector = 0;

	FUNC4(NVMEQ_DELETE_ERROR, &nvmeq->flags);

	/*
	 * A queue's vector matches the queue identifier unless the controller
	 * has only one vector available.
	 */
	if (!polled)
		vector = dev->num_vecs == 1 ? 0 : qid;
	else
		FUNC7(NVMEQ_POLLED, &nvmeq->flags);

	result = FUNC0(dev, qid, nvmeq, vector);
	if (result)
		return result;

	result = FUNC1(dev, qid, nvmeq);
	if (result < 0)
		return result;
	else if (result)
		goto release_cq;

	nvmeq->cq_vector = vector;
	FUNC5(nvmeq, qid);

	if (!polled) {
		result = FUNC6(nvmeq);
		if (result < 0)
			goto release_sq;
	}

	FUNC7(NVMEQ_ENABLED, &nvmeq->flags);
	return result;

release_sq:
	dev->online_queues--;
	FUNC3(dev, qid);
release_cq:
	FUNC2(dev, qid);
	return result;
}