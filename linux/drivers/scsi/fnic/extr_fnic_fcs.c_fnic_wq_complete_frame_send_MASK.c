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
struct vnic_wq_buf {struct sk_buff* os_buf; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; } ;
struct vnic_wq {int /*<<< orphan*/  vdev; } ;
struct sk_buff {int dummy; } ;
struct fnic {TYPE_1__* pdev; } ;
struct fc_frame {int dummy; } ;
struct cq_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 struct fnic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vnic_wq *wq,
					struct cq_desc *cq_desc,
					struct vnic_wq_buf *buf, void *opaque)
{
	struct sk_buff *skb = buf->os_buf;
	struct fc_frame *fp = (struct fc_frame *)skb;
	struct fnic *fnic = FUNC3(wq->vdev);

	FUNC1(&fnic->pdev->dev, buf->dma_addr, buf->len,
			 DMA_TO_DEVICE);
	FUNC0(FUNC2(fp));
	buf->os_buf = NULL;
}