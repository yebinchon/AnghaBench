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
struct dma_fifo {int avail; int in; int capacity; int /*<<< orphan*/  done; int /*<<< orphan*/  out; scalar_t__ data; scalar_t__ corrupt; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct dma_fifo*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void const*,int) ; 
 int FUNC4 (int,int) ; 

int FUNC5(struct dma_fifo *fifo, const void *src, int n)
{
	int ofs, l;

	if (!fifo->data)
		return -ENOENT;
	if (fifo->corrupt)
		return -ENXIO;

	if (n > fifo->avail)
		n = fifo->avail;
	if (n <= 0)
		return 0;

	ofs = fifo->in % fifo->capacity;
	l = FUNC4(n, fifo->capacity - ofs);
	FUNC3(fifo->data + ofs, src, l);
	FUNC3(fifo->data, src + l, n - l);

	if (FUNC0(fifo, FUNC1(fifo->done, fifo->in, fifo->in + n) ||
		 fifo->avail < n,
		 "fifo corrupt: in:%u out:%u done:%u n:%d avail:%d",
		 fifo->in, fifo->out, fifo->done, n, fifo->avail))
		return -ENXIO;

	fifo->in += n;
	fifo->avail -= n;

	FUNC2("in:%u out:%u done:%u n:%d avail:%d", fifo->in, fifo->out,
		 fifo->done, n, fifo->avail);

	return n;
}