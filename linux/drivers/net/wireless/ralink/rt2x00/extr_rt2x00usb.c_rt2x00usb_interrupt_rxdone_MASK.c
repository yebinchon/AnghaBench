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
struct urb {scalar_t__ actual_length; scalar_t__ status; scalar_t__ context; } ;
struct rt2x00_dev {int /*<<< orphan*/  rxdone_work; int /*<<< orphan*/  workqueue; } ;
struct queue_entry {int /*<<< orphan*/  flags; TYPE_1__* queue; } ;
struct TYPE_2__ {scalar_t__ desc_size; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_IO_FAILED ; 
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct queue_entry *entry = (struct queue_entry *)urb->context;
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;

	if (!FUNC3(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
		return;

	/*
	 * Check if the received data is simply too small
	 * to be actually valid, or if the urb is signaling
	 * a problem.
	 */
	if (urb->actual_length < entry->queue->desc_size || urb->status)
		FUNC2(ENTRY_DATA_IO_FAILED, &entry->flags);

	/*
	 * Report the frame as DMA done
	 */
	FUNC1(entry);

	/*
	 * Schedule the delayed work for processing RX data
	 */
	FUNC0(rt2x00dev->workqueue, &rt2x00dev->rxdone_work);
}