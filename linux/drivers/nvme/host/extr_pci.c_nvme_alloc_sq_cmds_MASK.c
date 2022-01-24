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
struct pci_dev {int dummy; } ;
struct nvme_queue {int /*<<< orphan*/  sq_cmds; int /*<<< orphan*/  sq_dma_addr; int /*<<< orphan*/  flags; } ;
struct nvme_dev {int cmbsz; int /*<<< orphan*/  dev; scalar_t__ cmb_use_sqes; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVMEQ_SQ_CMB ; 
 int NVME_CMBSZ_SQS ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nvme_dev *dev, struct nvme_queue *nvmeq,
				int qid)
{
	struct pci_dev *pdev = FUNC6(dev->dev);

	if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
		nvmeq->sq_cmds = FUNC2(pdev, FUNC0(nvmeq));
		if (nvmeq->sq_cmds) {
			nvmeq->sq_dma_addr = FUNC4(pdev,
							nvmeq->sq_cmds);
			if (nvmeq->sq_dma_addr) {
				FUNC5(NVMEQ_SQ_CMB, &nvmeq->flags);
				return 0;
			}

			FUNC3(pdev, nvmeq->sq_cmds, FUNC0(nvmeq));
		}
	}

	nvmeq->sq_cmds = FUNC1(dev->dev, FUNC0(nvmeq),
				&nvmeq->sq_dma_addr, GFP_KERNEL);
	if (!nvmeq->sq_cmds)
		return -ENOMEM;
	return 0;
}