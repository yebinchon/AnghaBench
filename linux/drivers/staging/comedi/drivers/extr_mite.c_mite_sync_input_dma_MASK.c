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
struct mite_channel {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_write_alloc_count; unsigned int buf_write_count; int /*<<< orphan*/  events; int /*<<< orphan*/  prealloc_bufsz; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (struct mite_channel*) ; 
 unsigned int FUNC5 (struct mite_channel*) ; 

__attribute__((used)) static void FUNC6(struct mite_channel *mite_chan,
				struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	int count;
	unsigned int nbytes, old_alloc_count;

	old_alloc_count = async->buf_write_alloc_count;
	/* write alloc as much as we can */
	FUNC0(s, async->prealloc_bufsz);

	nbytes = FUNC4(mite_chan);
	if ((int)(FUNC5(mite_chan) -
		  old_alloc_count) > 0) {
		FUNC3(s->device->class_dev,
			 "mite: DMA overwrite of free area\n");
		async->events |= COMEDI_CB_OVERFLOW;
		return;
	}

	count = nbytes - async->buf_write_count;
	/*
	 * it's possible count will be negative due to conservative value
	 * returned by mite_bytes_written_to_memory_lb
	 */
	if (count > 0) {
		FUNC1(s, count);
		FUNC2(s, count);
		async->events |= COMEDI_CB_BLOCK;
	}
}