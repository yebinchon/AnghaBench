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
typedef  int u32 ;
struct knav_acc_info {int list_size; struct knav_pdsp_info* pdsp; } ;
struct knav_range_info {int queue_base; int flags; int num_irqs; int num_queues; TYPE_1__* irqs; struct knav_acc_channel* acc; struct knav_acc_info acc_info; struct knav_device* kdev; } ;
struct knav_queue_inst {int* descs; int notify_needed; int /*<<< orphan*/  desc_tail; int /*<<< orphan*/  desc_count; } ;
struct knav_pdsp_info {scalar_t__ intd; } ;
struct knav_device {int base_id; int /*<<< orphan*/  dev; } ;
struct knav_acc_channel {int channel; size_t list_index; int** list_cpu; int /*<<< orphan*/  retrigger_count; int /*<<< orphan*/ * list_dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int ACC_CHANNEL_INT_BASE ; 
 int ACC_DESCS_MASK ; 
 int ACC_DESCS_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ACC_INTD_OFFSET_EOI ; 
 size_t ACC_LIST_ENTRY_DESC_IDX ; 
 size_t ACC_LIST_ENTRY_QUEUE_IDX ; 
 int ACC_LIST_ENTRY_WORDS ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RANGE_MULTI_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct knav_range_info*,struct knav_acc_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct knav_queue_inst* FUNC10 (struct knav_device*,struct knav_range_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *_instdata)
{
	struct knav_acc_channel *acc;
	struct knav_queue_inst *kq = NULL;
	struct knav_range_info *range;
	struct knav_pdsp_info *pdsp;
	struct knav_acc_info *info;
	struct knav_device *kdev;

	u32 *list, *list_cpu, val, idx, notifies;
	int range_base, channel, queue = 0;
	dma_addr_t list_dma;

	range = _instdata;
	info  = &range->acc_info;
	kdev  = range->kdev;
	pdsp  = range->acc_info.pdsp;
	acc   = range->acc;

	range_base = kdev->base_id + range->queue_base;
	if ((range->flags & RANGE_MULTI_QUEUE) == 0) {
		for (queue = 0; queue < range->num_irqs; queue++)
			if (range->irqs[queue].irq == irq)
				break;
		kq = FUNC10(kdev, range, queue);
		acc += queue;
	}

	channel = acc->channel;
	list_dma = acc->list_dma[acc->list_index];
	list_cpu = acc->list_cpu[acc->list_index];
	FUNC6(kdev->dev, "acc-irq: channel %d, list %d, virt %p, dma %pad\n",
		channel, acc->list_index, list_cpu, &list_dma);
	if (FUNC5(&acc->retrigger_count)) {
		FUNC3(&acc->retrigger_count);
		FUNC2(range, acc);
		FUNC13(1, pdsp->intd + FUNC0(channel));
		/* ack the interrupt */
		FUNC13(ACC_CHANNEL_INT_BASE + channel,
			       pdsp->intd + ACC_INTD_OFFSET_EOI);

		return IRQ_HANDLED;
	}

	notifies = FUNC12(pdsp->intd + FUNC0(channel));
	FUNC1(!notifies);
	FUNC8(kdev->dev, list_dma, info->list_size,
				DMA_FROM_DEVICE);

	for (list = list_cpu; list < list_cpu + (info->list_size / sizeof(u32));
	     list += ACC_LIST_ENTRY_WORDS) {
		if (ACC_LIST_ENTRY_WORDS == 1) {
			FUNC6(kdev->dev,
				"acc-irq: list %d, entry @%p, %08x\n",
				acc->list_index, list, list[0]);
		} else if (ACC_LIST_ENTRY_WORDS == 2) {
			FUNC6(kdev->dev,
				"acc-irq: list %d, entry @%p, %08x %08x\n",
				acc->list_index, list, list[0], list[1]);
		} else if (ACC_LIST_ENTRY_WORDS == 4) {
			FUNC6(kdev->dev,
				"acc-irq: list %d, entry @%p, %08x %08x %08x %08x\n",
				acc->list_index, list, list[0], list[1],
				list[2], list[3]);
		}

		val = list[ACC_LIST_ENTRY_DESC_IDX];
		if (!val)
			break;

		if (range->flags & RANGE_MULTI_QUEUE) {
			queue = list[ACC_LIST_ENTRY_QUEUE_IDX] >> 16;
			if (queue < range_base ||
			    queue >= range_base + range->num_queues) {
				FUNC7(kdev->dev,
					"bad queue %d, expecting %d-%d\n",
					queue, range_base,
					range_base + range->num_queues);
				break;
			}
			queue -= range_base;
			kq = FUNC10(kdev, range,
								queue);
		}

		if (FUNC4(&kq->desc_count) >= ACC_DESCS_MAX) {
			FUNC3(&kq->desc_count);
			FUNC7(kdev->dev,
				"acc-irq: queue %d full, entry dropped\n",
				queue + range_base);
			continue;
		}

		idx = FUNC4(&kq->desc_tail) & ACC_DESCS_MASK;
		kq->descs[idx] = val;
		kq->notify_needed = 1;
		FUNC6(kdev->dev, "acc-irq: enqueue %08x at %d, queue %d\n",
			val, idx, queue + range_base);
	}

	FUNC2(range, acc);
	FUNC11(list_cpu, 0, info->list_size);
	FUNC9(kdev->dev, list_dma, info->list_size,
				   DMA_TO_DEVICE);

	/* flip to the other list */
	acc->list_index ^= 1;

	/* reset the interrupt counter */
	FUNC13(1, pdsp->intd + FUNC0(channel));

	/* ack the interrupt */
	FUNC13(ACC_CHANNEL_INT_BASE + channel,
		       pdsp->intd + ACC_INTD_OFFSET_EOI);

	return IRQ_HANDLED;
}