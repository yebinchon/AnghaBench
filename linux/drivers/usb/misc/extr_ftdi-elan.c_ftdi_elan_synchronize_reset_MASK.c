#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_ftdi {TYPE_1__* udev; int /*<<< orphan*/  bulk_out_endpointAddr; } ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ftdi_elan_write_bulk_callback ; 
 char* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_ftdi *ftdi)
{
	int retval;
	struct urb *urb;
	char *buf;
	int I = 4;
	int i = 0;
	urb = FUNC2(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;
	buf = FUNC1(ftdi->udev, I, GFP_KERNEL, &urb->transfer_dma);
	if (!buf) {
		FUNC0(&ftdi->udev->dev, "could not get a buffer for the reset sequence\n");
		FUNC5(urb);
		return -ENOMEM;
	}
	buf[i++] = 0x55;
	buf[i++] = 0xAA;
	buf[i++] = 0x5A;
	buf[i++] = 0xA5;
	FUNC3(urb, ftdi->udev, FUNC6(ftdi->udev,
							   ftdi->bulk_out_endpointAddr), buf, i,
			  ftdi_elan_write_bulk_callback, ftdi);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	retval = FUNC7(urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&ftdi->udev->dev, "failed to submit urb containing the reset sequence\n");
		FUNC4(ftdi->udev, i, buf, urb->transfer_dma);
		FUNC5(urb);
		return -ENOMEM;
	}
	FUNC5(urb);
	return 0;
}