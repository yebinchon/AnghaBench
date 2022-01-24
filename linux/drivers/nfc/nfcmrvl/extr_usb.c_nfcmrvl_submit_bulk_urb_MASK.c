#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct nfcmrvl_usb_drv_data {TYPE_2__* udev; int /*<<< orphan*/  bulk_anchor; TYPE_1__* bulk_rx_ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int NFCMRVL_NCI_MAX_EVENT_SIZE ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 unsigned char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct urb*,int) ; 
 int /*<<< orphan*/  nfcmrvl_bulk_complete ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,TYPE_2__*,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct nfcmrvl_usb_drv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 unsigned int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static int
FUNC10(struct nfcmrvl_usb_drv_data *drv_data, gfp_t mem_flags)
{
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size = NFCMRVL_NCI_MAX_EVENT_SIZE;

	if (!drv_data->bulk_rx_ep)
		return -ENODEV;

	urb = FUNC2(0, mem_flags);
	if (!urb)
		return -ENOMEM;

	buf = FUNC0(size, mem_flags);
	if (!buf) {
		FUNC5(urb);
		return -ENOMEM;
	}

	pipe = FUNC7(drv_data->udev,
			       drv_data->bulk_rx_ep->bEndpointAddress);

	FUNC4(urb, drv_data->udev, pipe, buf, size,
			  nfcmrvl_bulk_complete, drv_data);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC6(drv_data->udev);
	FUNC3(urb, &drv_data->bulk_anchor);

	err = FUNC8(urb, mem_flags);
	if (err) {
		if (err != -EPERM && err != -ENODEV)
			FUNC1(&drv_data->udev->dev,
				"urb %p submission failed (%d)\n", urb, -err);
		FUNC9(urb);
	}

	FUNC5(urb);

	return err;
}