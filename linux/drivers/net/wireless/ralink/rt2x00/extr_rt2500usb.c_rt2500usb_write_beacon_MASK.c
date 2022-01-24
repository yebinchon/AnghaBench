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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {TYPE_3__* ops; int /*<<< orphan*/  dev; } ;
struct queue_entry_priv_usb_bcn {int /*<<< orphan*/  guardian_urb; scalar_t__ guardian_data; int /*<<< orphan*/  urb; } ;
struct queue_entry {TYPE_4__* skb; TYPE_1__* queue; struct queue_entry_priv_usb_bcn* priv_data; } ;
struct TYPE_8__ {scalar_t__* data; } ;
struct TYPE_7__ {TYPE_2__* lib; } ;
struct TYPE_6__ {int (* get_tx_data_len ) (struct queue_entry*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_FRAME_BEACON ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TXD_DESC_SIZE ; 
 int /*<<< orphan*/  TXRX_CSR19 ; 
 int /*<<< orphan*/  TXRX_CSR19_BEACON_GEN ; 
 int /*<<< orphan*/  TXRX_CSR19_TBCN ; 
 int /*<<< orphan*/  TXRX_CSR19_TSF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2500usb_beacondone ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct queue_entry*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct queue_entry*) ; 
 struct usb_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct usb_device*,int,scalar_t__*,int,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct queue_entry *entry,
				   struct txentry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct usb_device *usb_dev = FUNC8(rt2x00dev->dev);
	struct queue_entry_priv_usb_bcn *bcn_priv = entry->priv_data;
	int pipe = FUNC10(usb_dev, entry->queue->usb_endpoint);
	int length;
	u16 reg, reg0;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	reg = FUNC1(rt2x00dev, TXRX_CSR19);
	FUNC4(&reg, TXRX_CSR19_BEACON_GEN, 0);
	FUNC2(rt2x00dev, TXRX_CSR19, reg);

	/*
	 * Add space for the descriptor in front of the skb.
	 */
	FUNC6(entry->skb, TXD_DESC_SIZE);
	FUNC0(entry->skb->data, 0, TXD_DESC_SIZE);

	/*
	 * Write the TX descriptor for the beacon.
	 */
	FUNC3(entry, txdesc);

	/*
	 * Dump beacon to userspace through debugfs.
	 */
	FUNC5(rt2x00dev, DUMP_FRAME_BEACON, entry);

	/*
	 * USB devices cannot blindly pass the skb->len as the
	 * length of the data to usb_fill_bulk_urb. Pass the skb
	 * to the driver to determine what the length should be.
	 */
	length = rt2x00dev->ops->lib->get_tx_data_len(entry);

	FUNC9(bcn_priv->urb, usb_dev, pipe,
			  entry->skb->data, length, rt2500usb_beacondone,
			  entry);

	/*
	 * Second we need to create the guardian byte.
	 * We only need a single byte, so lets recycle
	 * the 'flags' field we are not using for beacons.
	 */
	bcn_priv->guardian_data = 0;
	FUNC9(bcn_priv->guardian_urb, usb_dev, pipe,
			  &bcn_priv->guardian_data, 1, rt2500usb_beacondone,
			  entry);

	/*
	 * Send out the guardian byte.
	 */
	FUNC11(bcn_priv->guardian_urb, GFP_ATOMIC);

	/*
	 * Enable beaconing again.
	 */
	FUNC4(&reg, TXRX_CSR19_TSF_COUNT, 1);
	FUNC4(&reg, TXRX_CSR19_TBCN, 1);
	reg0 = reg;
	FUNC4(&reg, TXRX_CSR19_BEACON_GEN, 1);
	/*
	 * Beacon generation will fail initially.
	 * To prevent this we need to change the TXRX_CSR19
	 * register several times (reg0 is the same as reg
	 * except for TXRX_CSR19_BEACON_GEN, which is 0 in reg0
	 * and 1 in reg).
	 */
	FUNC2(rt2x00dev, TXRX_CSR19, reg);
	FUNC2(rt2x00dev, TXRX_CSR19, reg0);
	FUNC2(rt2x00dev, TXRX_CSR19, reg);
	FUNC2(rt2x00dev, TXRX_CSR19, reg0);
	FUNC2(rt2x00dev, TXRX_CSR19, reg);
}