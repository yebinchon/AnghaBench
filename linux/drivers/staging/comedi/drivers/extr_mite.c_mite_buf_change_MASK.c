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
struct mite_ring {unsigned int n_links; struct mite_dma_desc* descs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  hw_dev; } ;
struct mite_dma_desc {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_async {unsigned int prealloc_bufsz; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mite_dma_desc* FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mite_ring*) ; 
 int FUNC3 (struct mite_ring*,struct comedi_subdevice*,unsigned int) ; 

int FUNC4(struct mite_ring *ring, struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	struct mite_dma_desc *descs;
	unsigned int n_links;

	FUNC2(ring);

	if (async->prealloc_bufsz == 0)
		return 0;

	n_links = async->prealloc_bufsz >> PAGE_SHIFT;

	descs = FUNC1(ring->hw_dev,
				   n_links * sizeof(*descs),
				   &ring->dma_addr, GFP_KERNEL);
	if (!descs) {
		FUNC0(s->device->class_dev,
			"mite: ring buffer allocation failed\n");
		return -ENOMEM;
	}
	ring->descs = descs;
	ring->n_links = n_links;

	return FUNC3(ring, s, n_links << PAGE_SHIFT);
}