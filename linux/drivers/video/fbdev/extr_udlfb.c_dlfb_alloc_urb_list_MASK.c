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
struct urb_node {int /*<<< orphan*/  entry; struct urb* urb; struct dlfb_data* dlfb; } ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_2__ {size_t size; size_t count; scalar_t__ available; int /*<<< orphan*/  limit_sem; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct dlfb_data {TYPE_1__ urbs; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (struct dlfb_data*) ; 
 int /*<<< orphan*/  dlfb_urb_completion ; 
 int /*<<< orphan*/  FUNC2 (struct urb_node*) ; 
 struct urb_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,struct urb_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct dlfb_data *dlfb, int count, size_t size)
{
	struct urb *urb;
	struct urb_node *unode;
	char *buf;
	size_t wanted_size = count * size;

	FUNC6(&dlfb->urbs.lock);

retry:
	dlfb->urbs.size = size;
	FUNC0(&dlfb->urbs.list);

	FUNC5(&dlfb->urbs.limit_sem, 0);
	dlfb->urbs.count = 0;
	dlfb->urbs.available = 0;

	while (dlfb->urbs.count * size < wanted_size) {
		unode = FUNC3(sizeof(*unode), GFP_KERNEL);
		if (!unode)
			break;
		unode->dlfb = dlfb;

		urb = FUNC9(0, GFP_KERNEL);
		if (!urb) {
			FUNC2(unode);
			break;
		}
		unode->urb = urb;

		buf = FUNC8(dlfb->udev, size, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC2(unode);
			FUNC11(urb);
			if (size > PAGE_SIZE) {
				size /= 2;
				FUNC1(dlfb);
				goto retry;
			}
			break;
		}

		/* urb->transfer_buffer_length set to actual before submit */
		FUNC10(urb, dlfb->udev, FUNC12(dlfb->udev, 1),
			buf, size, dlfb_urb_completion, unode);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

		FUNC4(&unode->entry, &dlfb->urbs.list);

		FUNC7(&dlfb->urbs.limit_sem);
		dlfb->urbs.count++;
		dlfb->urbs.available++;
	}

	return dlfb->urbs.count;
}