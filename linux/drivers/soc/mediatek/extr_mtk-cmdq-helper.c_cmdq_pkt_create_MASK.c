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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct cmdq_pkt {size_t buf_size; int /*<<< orphan*/  pa_base; struct cmdq_pkt* va_base; void* cl; } ;
struct cmdq_client {TYPE_2__* chan; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {TYPE_1__* mbox; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cmdq_pkt* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct cmdq_pkt*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_pkt*) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 

struct cmdq_pkt *FUNC6(struct cmdq_client *client, size_t size)
{
	struct cmdq_pkt *pkt;
	struct device *dev;
	dma_addr_t dma_addr;

	pkt = FUNC5(sizeof(*pkt), GFP_KERNEL);
	if (!pkt)
		return FUNC0(-ENOMEM);
	pkt->va_base = FUNC5(size, GFP_KERNEL);
	if (!pkt->va_base) {
		FUNC4(pkt);
		return FUNC0(-ENOMEM);
	}
	pkt->buf_size = size;
	pkt->cl = (void *)client;

	dev = client->chan->mbox->dev;
	dma_addr = FUNC2(dev, pkt->va_base, pkt->buf_size,
				  DMA_TO_DEVICE);
	if (FUNC3(dev, dma_addr)) {
		FUNC1(dev, "dma map failed, size=%u\n", (u32)(u64)size);
		FUNC4(pkt->va_base);
		FUNC4(pkt);
		return FUNC0(-ENOMEM);
	}

	pkt->pa_base = dma_addr;

	return pkt;
}