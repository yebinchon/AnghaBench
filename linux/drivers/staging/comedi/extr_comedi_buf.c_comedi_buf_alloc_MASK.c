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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  mutex; } ;
struct comedi_async {unsigned long prealloc_bufsz; scalar_t__ prealloc_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
		     unsigned long new_size)
{
	struct comedi_async *async = s->async;

	FUNC2(&dev->mutex);

	/* Round up new_size to multiple of PAGE_SIZE */
	new_size = (new_size + PAGE_SIZE - 1) & PAGE_MASK;

	/* if no change is required, do nothing */
	if (async->prealloc_buf && async->prealloc_bufsz == new_size)
		return 0;

	/* deallocate old buffer */
	FUNC1(dev, s);

	/* allocate new buffer */
	if (new_size) {
		unsigned int n_pages = new_size >> PAGE_SHIFT;

		FUNC0(dev, s, n_pages);

		if (!async->prealloc_buf) {
			/* allocation failed */
			FUNC1(dev, s);
			return -ENOMEM;
		}
	}
	async->prealloc_bufsz = new_size;

	return 0;
}