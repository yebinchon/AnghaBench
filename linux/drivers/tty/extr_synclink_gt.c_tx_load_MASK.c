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
struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int tbuf_start; unsigned int tbuf_current; unsigned int tbuf_count; int /*<<< orphan*/  tx_active; struct slgt_desc* tbufs; TYPE_1__ params; } ;
struct slgt_desc {unsigned short buf_count; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slgt_info*,char const*,unsigned int,char*) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 unsigned int DMABUFSIZE ; 
 scalar_t__ MGSL_MODE_HDLC ; 
 scalar_t__ MGSL_MODE_RAW ; 
 scalar_t__ FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_desc,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_desc,int) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*) ; 

__attribute__((used)) static bool FUNC8(struct slgt_info *info, const char *buf, unsigned int size)
{
	unsigned short count;
	unsigned int i;
	struct slgt_desc *d;

	/* check required buffer space */
	if (FUNC1(size, DMABUFSIZE) > FUNC2(info))
		return false;

	FUNC0(info, buf, size, "tx");

	/*
	 * copy data to one or more DMA buffers in circular ring
	 * tbuf_start   = first buffer for this data
	 * tbuf_current = next free buffer
	 *
	 * Copy all data before making data visible to DMA controller by
	 * setting descriptor count of the first buffer.
	 * This prevents an active DMA controller from reading the first DMA
	 * buffers of a frame and stopping before the final buffers are filled.
	 */

	info->tbuf_start = i = info->tbuf_current;

	while (size) {
		d = &info->tbufs[i];

		count = (unsigned short)((size > DMABUFSIZE) ? DMABUFSIZE : size);
		FUNC3(d->buf, buf, count);

		size -= count;
		buf  += count;

		/*
		 * set EOF bit for last buffer of HDLC frame or
		 * for every buffer in raw mode
		 */
		if ((!size && info->params.mode == MGSL_MODE_HDLC) ||
		    info->params.mode == MGSL_MODE_RAW)
			FUNC5(*d, 1);
		else
			FUNC5(*d, 0);

		/* set descriptor count for all but first buffer */
		if (i != info->tbuf_start)
			FUNC4(*d, count);
		d->buf_count = count;

		if (++i == info->tbuf_count)
			i = 0;
	}

	info->tbuf_current = i;

	/* set first buffer count to make new data visible to DMA controller */
	d = &info->tbufs[info->tbuf_start];
	FUNC4(*d, d->buf_count);

	/* start transmitter if needed and update transmit timeout */
	if (!info->tx_active)
		FUNC6(info);
	FUNC7(info);

	return true;
}