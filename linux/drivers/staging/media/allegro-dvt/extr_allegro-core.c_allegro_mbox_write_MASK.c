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
struct mcu_msg_header {size_t length; int /*<<< orphan*/  type; } ;
struct allegro_mbox {size_t size; int /*<<< orphan*/  lock; int /*<<< orphan*/  tail; scalar_t__ data; } ;
struct allegro_dev {int /*<<< orphan*/  sram; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  debug ; 
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,unsigned int,size_t) ; 

__attribute__((used)) static int FUNC9(struct allegro_dev *dev,
			      struct allegro_mbox *mbox, void *src, size_t size)
{
	struct mcu_msg_header *header = src;
	unsigned int tail;
	size_t size_no_wrap;
	int err = 0;

	if (!src)
		return -EINVAL;

	if (size > mbox->size) {
		FUNC8(&dev->v4l2_dev,
			 "message (%zu bytes) to large for mailbox (%zu bytes)\n",
			 size, mbox->size);
		return -EINVAL;
	}

	if (header->length != size - sizeof(*header)) {
		FUNC8(&dev->v4l2_dev,
			 "invalid message length: %u bytes (expected %zu bytes)\n",
			 header->length, size - sizeof(*header));
		return -EINVAL;
	}

	FUNC7(2, debug, &dev->v4l2_dev,
		 "write command message: type %s, body length %d\n",
		 FUNC1(header->type), header->length);

	FUNC2(&mbox->lock);
	FUNC5(dev->sram, mbox->tail, &tail);
	if (tail > mbox->size) {
		FUNC8(&dev->v4l2_dev,
			 "invalid tail (0x%x): must be smaller than mailbox size (0x%zx)\n",
			 tail, mbox->size);
		err = -EIO;
		goto out;
	}
	size_no_wrap = FUNC0(size, mbox->size - (size_t)tail);
	FUNC4(dev->sram, mbox->data + tail, src, size_no_wrap / 4);
	FUNC4(dev->sram, mbox->data,
			  src + size_no_wrap, (size - size_no_wrap) / 4);
	FUNC6(dev->sram, mbox->tail, (tail + size) % mbox->size);

out:
	FUNC3(&mbox->lock);

	return err;
}