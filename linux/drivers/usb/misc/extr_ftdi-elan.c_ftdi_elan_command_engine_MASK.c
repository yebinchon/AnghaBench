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
typedef  char u8 ;
struct usb_ftdi {int command_next; int command_head; TYPE_1__* udev; int /*<<< orphan*/  bulk_out_endpointAddr; } ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
typedef  int /*<<< orphan*/  diag ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct usb_ftdi*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ftdi*) ; 
 int FUNC3 (struct usb_ftdi*,int) ; 
 int /*<<< orphan*/  ftdi_elan_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 char* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_ftdi *ftdi)
{
	int retval;
	char *buf;
	int ed_commands;
	int total_size;
	struct urb *urb;
	int command_size = ftdi->command_next - ftdi->command_head;
	if (command_size == 0)
		return 0;
	total_size = FUNC3(ftdi, command_size);
	urb = FUNC6(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;
	buf = FUNC5(ftdi->udev, total_size, GFP_KERNEL,
				 &urb->transfer_dma);
	if (!buf) {
		FUNC0(&ftdi->udev->dev, "could not get a buffer to write %d commands totaling %d bytes to the Uxxx\n",
			command_size, total_size);
		FUNC9(urb);
		return -ENOMEM;
	}
	ed_commands = FUNC1(ftdi, buf,
							   command_size, total_size);
	FUNC7(urb, ftdi->udev, FUNC10(ftdi->udev,
							   ftdi->bulk_out_endpointAddr), buf, total_size,
			  ftdi_elan_write_bulk_callback, ftdi);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	if (ed_commands) {
		char diag[40 *3 + 4];
		char *d = diag;
		int m = total_size;
		u8 *c = buf;
		int s = (sizeof(diag) - 1) / 3;
		diag[0] = 0;
		while (s-- > 0 && m-- > 0) {
			if (s > 0 || m == 0) {
				d += FUNC4(d, " %02X", *c++);
			} else
				d += FUNC4(d, " ..");
		}
	}
	retval = FUNC11(urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&ftdi->udev->dev, "failed %d to submit urb %p to write %d commands totaling %d bytes to the Uxxx\n",
			retval, urb, command_size, total_size);
		FUNC8(ftdi->udev, total_size, buf, urb->transfer_dma);
		FUNC9(urb);
		return retval;
	}
	FUNC9(urb);        /* release our reference to this urb,
				     the USB core will eventually free it entirely */
	ftdi->command_head += command_size;
	FUNC2(ftdi);
	return 0;
}