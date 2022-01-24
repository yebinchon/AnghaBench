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
typedef  int uint ;
struct viosrp_crq {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int size; int mask; struct viosrp_crq* base_addr; int /*<<< orphan*/  crq_token; } ;
struct scsi_info {TYPE_1__ cmd_q; struct vio_dev* dma_dev; } ;

/* Variables and functions */
 int CRQ_PER_PAGE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct viosrp_crq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct scsi_info *vscsi, int num_cmds)
{
	int pages;
	struct vio_dev *vdev = vscsi->dma_dev;

	/* We might support multiple pages in the future, but just 1 for now */
	pages = 1;

	vscsi->cmd_q.size = pages;

	vscsi->cmd_q.base_addr =
		(struct viosrp_crq *)FUNC3(GFP_KERNEL);
	if (!vscsi->cmd_q.base_addr)
		return -ENOMEM;

	vscsi->cmd_q.mask = ((uint)pages * CRQ_PER_PAGE) - 1;

	vscsi->cmd_q.crq_token = FUNC0(&vdev->dev,
						vscsi->cmd_q.base_addr,
						PAGE_SIZE, DMA_BIDIRECTIONAL);
	if (FUNC1(&vdev->dev, vscsi->cmd_q.crq_token)) {
		FUNC2((unsigned long)vscsi->cmd_q.base_addr);
		return -ENOMEM;
	}

	return 0;
}