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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DRCI_READ_REQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct usb_device *dev, u16 reg, u16 *buf)
{
	int retval;
	__le16 *dma_buf = FUNC1(sizeof(*dma_buf), GFP_KERNEL);
	u8 req_type = USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE;

	if (!dma_buf)
		return -ENOMEM;

	retval = FUNC3(dev, FUNC4(dev, 0),
				 DRCI_READ_REQ, req_type,
				 0x0000,
				 reg, dma_buf, sizeof(*dma_buf), 5 * HZ);
	*buf = FUNC2(*dma_buf);
	FUNC0(dma_buf);

	return retval;
}