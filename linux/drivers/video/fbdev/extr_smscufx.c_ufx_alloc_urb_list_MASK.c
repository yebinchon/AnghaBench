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
struct urb_node {int /*<<< orphan*/  entry; struct urb* urb; int /*<<< orphan*/  release_urb_work; struct ufx_data* dev; } ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_2__ {size_t size; int count; int available; int /*<<< orphan*/  limit_sem; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct ufx_data {TYPE_1__ urbs; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC2 (struct urb_node*) ; 
 struct urb_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ufx_release_urb_work ; 
 int /*<<< orphan*/  ufx_urb_completion ; 
 char* FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,struct urb_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct ufx_data *dev, int count, size_t size)
{
	int i = 0;
	struct urb *urb;
	struct urb_node *unode;
	char *buf;

	FUNC7(&dev->urbs.lock);

	dev->urbs.size = size;
	FUNC1(&dev->urbs.list);

	while (i < count) {
		unode = FUNC3(sizeof(*unode), GFP_KERNEL);
		if (!unode)
			break;
		unode->dev = dev;

		FUNC0(&unode->release_urb_work,
			  ufx_release_urb_work);

		urb = FUNC9(0, GFP_KERNEL);
		if (!urb) {
			FUNC2(unode);
			break;
		}
		unode->urb = urb;

		buf = FUNC8(dev->udev, size, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC2(unode);
			FUNC11(urb);
			break;
		}

		/* urb->transfer_buffer_length set to actual before submit */
		FUNC10(urb, dev->udev, FUNC12(dev->udev, 1),
			buf, size, ufx_urb_completion, unode);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

		FUNC4(&unode->entry, &dev->urbs.list);

		i++;
	}

	FUNC6(&dev->urbs.limit_sem, i);
	dev->urbs.count = i;
	dev->urbs.available = i;

	FUNC5("allocated %d %d byte urbs\n", i, (int) size);

	return i;
}