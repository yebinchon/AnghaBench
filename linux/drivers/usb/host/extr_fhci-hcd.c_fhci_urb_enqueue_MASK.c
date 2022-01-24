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
typedef  int /*<<< orphan*/  u32 ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int num_of_tds; struct urb_priv* tds; } ;
struct urb {int transfer_buffer_length; int transfer_flags; int number_of_packets; struct urb_priv* hcpriv; scalar_t__ error_count; scalar_t__ actual_length; int /*<<< orphan*/  status; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  pipe; } ;
struct fhci_hcd {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXDEV ; 
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*,struct urb*) ; 
 struct fhci_hcd* FUNC1 (struct usb_hcd*) ; 
 struct urb_priv* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb_priv*) ; 
 struct urb_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct usb_hcd*,struct urb*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct usb_hcd *hcd, struct urb *urb,
			    gfp_t mem_flags)
{
	struct fhci_hcd *fhci = FUNC1(hcd);
	u32 pipe = urb->pipe;
	int ret;
	int i;
	int size = 0;
	struct urb_priv *urb_priv;
	unsigned long flags;

	switch (FUNC10(pipe)) {
	case PIPE_CONTROL:
		/* 1 td fro setup,1 for ack */
		size = 2;
	case PIPE_BULK:
		/* one td for every 4096 bytes(can be up to 8k) */
		size += urb->transfer_buffer_length / 4096;
		/* ...add for any remaining bytes... */
		if ((urb->transfer_buffer_length % 4096) != 0)
			size++;
		/* ..and maybe a zero length packet to wrap it up */
		if (size == 0)
			size++;
		else if ((urb->transfer_flags & URB_ZERO_PACKET) != 0
			 && (urb->transfer_buffer_length
			     % FUNC8(urb->dev, pipe,
					     FUNC9(pipe))) != 0)
			size++;
		break;
	case PIPE_ISOCHRONOUS:
		size = urb->number_of_packets;
		if (size <= 0)
			return -EINVAL;
		for (i = 0; i < urb->number_of_packets; i++) {
			urb->iso_frame_desc[i].actual_length = 0;
			urb->iso_frame_desc[i].status = (u32) (-EXDEV);
		}
		break;
	case PIPE_INTERRUPT:
		size = 1;
	}

	/* allocate the private part of the URB */
	urb_priv = FUNC4(sizeof(*urb_priv), mem_flags);
	if (!urb_priv)
		return -ENOMEM;

	/* allocate the private part of the URB */
	urb_priv->tds = FUNC2(size, sizeof(*urb_priv->tds), mem_flags);
	if (!urb_priv->tds) {
		FUNC3(urb_priv);
		return -ENOMEM;
	}

	FUNC5(&fhci->lock, flags);

	ret = FUNC7(hcd, urb);
	if (ret)
		goto err;

	/* fill the private part of the URB */
	urb_priv->num_of_tds = size;

	urb->status = -EINPROGRESS;
	urb->actual_length = 0;
	urb->error_count = 0;
	urb->hcpriv = urb_priv;

	FUNC0(fhci, urb);
err:
	if (ret) {
		FUNC3(urb_priv->tds);
		FUNC3(urb_priv);
	}
	FUNC6(&fhci->lock, flags);
	return ret;
}