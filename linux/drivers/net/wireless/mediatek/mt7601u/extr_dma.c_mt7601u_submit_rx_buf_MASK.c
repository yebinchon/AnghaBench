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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct mt7601u_dma_buf_rx {int /*<<< orphan*/  urb; int /*<<< orphan*/  p; } ;
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * in_eps; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 size_t MT_EP_IN_PKT_RX ; 
 int /*<<< orphan*/  MT_RX_URB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mt7601u_complete_rx ; 
 struct usb_device* FUNC1 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct usb_device*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mt7601u_dev*) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mt7601u_dev *dev,
				 struct mt7601u_dma_buf_rx *e, gfp_t gfp)
{
	struct usb_device *usb_dev = FUNC1(dev);
	u8 *buf = FUNC2(e->p);
	unsigned pipe;
	int ret;

	pipe = FUNC5(usb_dev, dev->in_eps[MT_EP_IN_PKT_RX]);

	FUNC4(e->urb, usb_dev, pipe, buf, MT_RX_URB_SIZE,
			  mt7601u_complete_rx, dev);

	FUNC3(dev, e->urb);
	ret = FUNC6(e->urb, gfp);
	if (ret)
		FUNC0(dev->dev, "Error: submit RX URB failed:%d\n", ret);

	return ret;
}