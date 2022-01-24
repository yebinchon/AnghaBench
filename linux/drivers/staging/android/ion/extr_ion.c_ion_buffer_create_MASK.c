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
struct ion_heap {int flags; scalar_t__ num_of_alloc_bytes; scalar_t__ alloc_bytes_wm; TYPE_1__* ops; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  num_of_buffers; } ;
struct ion_device {int dummy; } ;
struct ion_buffer {unsigned long flags; unsigned long size; int /*<<< orphan*/  lock; int /*<<< orphan*/  attachments; int /*<<< orphan*/  sg_table; struct ion_device* dev; struct ion_heap* heap; } ;
struct TYPE_2__ {int (* allocate ) (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ;int /*<<< orphan*/  (* free ) (struct ion_buffer*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ion_buffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ION_HEAP_FLAG_DEFER_FREE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ion_heap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ion_buffer*) ; 
 struct ion_buffer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ; 
 int FUNC10 (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ion_buffer*) ; 

__attribute__((used)) static struct ion_buffer *FUNC12(struct ion_heap *heap,
					    struct ion_device *dev,
					    unsigned long len,
					    unsigned long flags)
{
	struct ion_buffer *buffer;
	int ret;

	buffer = FUNC5(sizeof(*buffer), GFP_KERNEL);
	if (!buffer)
		return FUNC0(-ENOMEM);

	buffer->heap = heap;
	buffer->flags = flags;
	buffer->dev = dev;
	buffer->size = len;

	ret = heap->ops->allocate(heap, buffer, len, flags);

	if (ret) {
		if (!(heap->flags & ION_HEAP_FLAG_DEFER_FREE))
			goto err2;

		FUNC3(heap, 0);
		ret = heap->ops->allocate(heap, buffer, len, flags);
		if (ret)
			goto err2;
	}

	if (!buffer->sg_table) {
		FUNC2(1, "This heap needs to set the sgtable");
		ret = -EINVAL;
		goto err1;
	}

	FUNC7(&heap->stat_lock);
	heap->num_of_buffers++;
	heap->num_of_alloc_bytes += len;
	if (heap->num_of_alloc_bytes > heap->alloc_bytes_wm)
		heap->alloc_bytes_wm = heap->num_of_alloc_bytes;
	FUNC8(&heap->stat_lock);

	FUNC1(&buffer->attachments);
	FUNC6(&buffer->lock);
	return buffer;

err1:
	heap->ops->free(buffer);
err2:
	FUNC4(buffer);
	return FUNC0(ret);
}