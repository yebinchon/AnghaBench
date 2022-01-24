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
struct usb_device {int dummy; } ;
struct mt7601u_dma_buf {int /*<<< orphan*/  urb; int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mt7601u_dev *dev, struct mt7601u_dma_buf *buf)
{
	struct usb_device *usb_dev = FUNC0(dev);

	FUNC1(usb_dev, buf->len, buf->buf, buf->dma);
	FUNC2(buf->urb);
}