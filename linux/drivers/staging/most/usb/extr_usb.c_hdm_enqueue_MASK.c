#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct most_interface {int num_channels; } ;
struct most_dev {int /*<<< orphan*/  io_mutex; TYPE_1__* usb_device; int /*<<< orphan*/ * busy_urbs; int /*<<< orphan*/ * ep_address; scalar_t__* padding_active; struct most_channel_config* conf; } ;
struct most_channel_config {int direction; scalar_t__ data_type; unsigned long extra_len; } ;
struct mbo {unsigned long buffer_length; void* virt_address; int /*<<< orphan*/  bus_address; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECHRNG ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MOST_CH_ISOC ; 
 scalar_t__ MOST_CH_SYNC ; 
 int MOST_CH_TX ; 
 int /*<<< orphan*/  NO_ISOCHRONOUS_URB ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct most_dev*,int,struct mbo*) ; 
 int /*<<< orphan*/  hdm_read_completion ; 
 int /*<<< orphan*/  hdm_write_completion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct most_dev* FUNC4 (struct most_interface*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,void*,unsigned long,int /*<<< orphan*/ ,struct mbo*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*) ; 

__attribute__((used)) static int FUNC14(struct most_interface *iface, int channel,
		       struct mbo *mbo)
{
	struct most_dev *mdev;
	struct most_channel_config *conf;
	int retval = 0;
	struct urb *urb;
	unsigned long length;
	void *virt_address;

	if (FUNC5(!iface || !mbo))
		return -EIO;
	if (FUNC5(iface->num_channels <= channel || channel < 0))
		return -ECHRNG;

	mdev = FUNC4(iface);
	conf = &mdev->conf[channel];

	FUNC2(&mdev->io_mutex);
	if (!mdev->usb_device) {
		retval = -ENODEV;
		goto unlock_io_mutex;
	}

	urb = FUNC6(NO_ISOCHRONOUS_URB, GFP_ATOMIC);
	if (!urb) {
		retval = -ENOMEM;
		goto unlock_io_mutex;
	}

	if ((conf->direction & MOST_CH_TX) && mdev->padding_active[channel] &&
	    FUNC1(mdev, channel, mbo)) {
		retval = -EIO;
		goto err_free_urb;
	}

	urb->transfer_dma = mbo->bus_address;
	virt_address = mbo->virt_address;
	length = mbo->buffer_length;

	if (conf->direction & MOST_CH_TX) {
		FUNC8(urb, mdev->usb_device,
				  FUNC11(mdev->usb_device,
						  mdev->ep_address[channel]),
				  virt_address,
				  length,
				  hdm_write_completion,
				  mbo);
		if (conf->data_type != MOST_CH_ISOC &&
		    conf->data_type != MOST_CH_SYNC)
			urb->transfer_flags |= URB_ZERO_PACKET;
	} else {
		FUNC8(urb, mdev->usb_device,
				  FUNC10(mdev->usb_device,
						  mdev->ep_address[channel]),
				  virt_address,
				  length + conf->extra_len,
				  hdm_read_completion,
				  mbo);
	}
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	FUNC7(urb, &mdev->busy_urbs[channel]);

	retval = FUNC12(urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&mdev->usb_device->dev,
			"URB submit failed with error %d.\n", retval);
		goto err_unanchor_urb;
	}
	goto unlock_io_mutex;

err_unanchor_urb:
	FUNC13(urb);
err_free_urb:
	FUNC9(urb);
unlock_io_mutex:
	FUNC3(&mdev->io_mutex);
	return retval;
}