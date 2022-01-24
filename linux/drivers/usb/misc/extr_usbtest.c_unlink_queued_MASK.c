#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usbtest_dev {TYPE_1__* intf; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct queued_ctx {unsigned int num; int status; TYPE_2__** urbs; int /*<<< orphan*/  complete; int /*<<< orphan*/  pending; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_11__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 struct usb_device* FUNC11 (struct usbtest_dev*) ; 
 int /*<<< orphan*/  unlink_queued_callback ; 
 void* FUNC12 (struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct usb_device*,int,void*,unsigned int,int /*<<< orphan*/ ,struct queued_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,unsigned int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct usbtest_dev *dev, int pipe, unsigned num,
		unsigned size)
{
	struct queued_ctx	ctx;
	struct usb_device	*udev = FUNC11(dev);
	void			*buf;
	dma_addr_t		buf_dma;
	int			i;
	int			retval = -ENOMEM;

	FUNC6(&ctx.complete);
	FUNC3(&ctx.pending, 1);	/* One more than the actual value */
	ctx.num = num;
	ctx.status = 0;

	buf = FUNC12(udev, size, GFP_KERNEL, &buf_dma);
	if (!buf)
		return retval;
	FUNC9(buf, 0, size);

	/* Allocate and init the urbs we'll queue */
	ctx.urbs = FUNC7(num, sizeof(struct urb *), GFP_KERNEL);
	if (!ctx.urbs)
		goto free_buf;
	for (i = 0; i < num; i++) {
		ctx.urbs[i] = FUNC13(0, GFP_KERNEL);
		if (!ctx.urbs[i])
			goto free_urbs;
		FUNC14(ctx.urbs[i], udev, pipe, buf, size,
				unlink_queued_callback, &ctx);
		ctx.urbs[i]->transfer_dma = buf_dma;
		ctx.urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;

		if (FUNC17(ctx.urbs[i]->pipe)) {
			FUNC10(ctx.urbs[i]);
			ctx.urbs[i]->transfer_flags |= URB_ZERO_PACKET;
		}
	}

	/* Submit all the URBs and then unlink URBs num - 4 and num - 2. */
	for (i = 0; i < num; i++) {
		FUNC2(&ctx.pending);
		retval = FUNC18(ctx.urbs[i], GFP_KERNEL);
		if (retval != 0) {
			FUNC5(&dev->intf->dev, "submit urbs[%d] fail %d\n",
					i, retval);
			FUNC0(&ctx.pending);
			ctx.status = retval;
			break;
		}
	}
	if (i == num) {
		FUNC19(ctx.urbs[num - 4]);
		FUNC19(ctx.urbs[num - 2]);
	} else {
		while (--i >= 0)
			FUNC19(ctx.urbs[i]);
	}

	if (FUNC1(&ctx.pending))		/* The extra count */
		FUNC4(&ctx.complete);
	FUNC20(&ctx.complete);
	retval = ctx.status;

 free_urbs:
	for (i = 0; i < num; i++)
		FUNC16(ctx.urbs[i]);
	FUNC8(ctx.urbs);
 free_buf:
	FUNC15(udev, size, buf, buf_dma);
	return retval;
}