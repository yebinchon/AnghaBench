#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; TYPE_2__* ops; int /*<<< orphan*/  dev; } ;
struct queue_entry_priv_usb {int /*<<< orphan*/  urb; } ;
struct queue_entry {int /*<<< orphan*/  flags; TYPE_4__* skb; TYPE_3__* queue; struct queue_entry_priv_usb* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_tx_data_len ) (struct queue_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  ENTRY_DATA_IO_FAILED ; 
 int /*<<< orphan*/  ENTRY_DATA_PENDING ; 
 int /*<<< orphan*/  ENTRY_DATA_STATUS_PENDING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_entry*) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  rt2x00usb_interrupt_txdone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(struct queue_entry *entry, void *data)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct usb_device *usb_dev = FUNC9(rt2x00dev->dev);
	struct queue_entry_priv_usb *entry_priv = entry->priv_data;
	u32 length;
	int status;

	if (!FUNC7(ENTRY_DATA_PENDING, &entry->flags) ||
	    FUNC8(ENTRY_DATA_STATUS_PENDING, &entry->flags))
		return false;

	/*
	 * USB devices require certain padding at the end of each frame
	 * and urb. Those paddings are not included in skbs. Pass entry
	 * to the driver to determine what the overall length should be.
	 */
	length = rt2x00dev->ops->lib->get_tx_data_len(entry);

	status = FUNC5(entry->skb, length);
	if (FUNC10(status)) {
		/* TODO: report something more appropriate than IO_FAILED. */
		FUNC1(rt2x00dev, "TX SKB padding error, out of memory\n");
		FUNC4(ENTRY_DATA_IO_FAILED, &entry->flags);
		FUNC2(entry);

		return false;
	}

	FUNC11(entry_priv->urb, usb_dev,
			  FUNC12(usb_dev, entry->queue->usb_endpoint),
			  entry->skb->data, length,
			  rt2x00usb_interrupt_txdone, entry);

	status = FUNC13(entry_priv->urb, GFP_ATOMIC);
	if (status) {
		if (FUNC3(rt2x00dev, status))
			FUNC0(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
		FUNC4(ENTRY_DATA_IO_FAILED, &entry->flags);
		FUNC2(entry);
	}

	return false;
}