#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int rbuf_fill_count; unsigned int rbuf_fill_index; int rx_restart; unsigned int rbuf_fill_level; unsigned int rbuf_count; int /*<<< orphan*/  pending_bh; TYPE_2__* rbufs; TYPE_1__ params; int /*<<< orphan*/  device_name; } ;
struct TYPE_6__ {unsigned char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_RECEIVE ; 
 unsigned short BIT10 ; 
 unsigned short BIT15 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IRQ_RXDATA ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  RDR ; 
 int /*<<< orphan*/  SSR ; 
 scalar_t__ FUNC1 (TYPE_2__) ; 
 int FUNC2 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__,unsigned short) ; 

__attribute__((used)) static void FUNC6(struct slgt_info *info)
{
	unsigned int count = info->rbuf_fill_count;
	unsigned int i = info->rbuf_fill_index;
	unsigned short reg;

	while (FUNC2(info, SSR) & IRQ_RXDATA) {
		reg = FUNC2(info, RDR);
		FUNC0(("isr_rxdata %s RDR=%04X\n", info->device_name, reg));
		if (FUNC1(info->rbufs[i])) {
			/* all buffers full */
			FUNC3(info);
			info->rx_restart = 1;
			continue;
		}
		info->rbufs[i].buf[count++] = (unsigned char)reg;
		/* async mode saves status byte to buffer for each data byte */
		if (info->params.mode == MGSL_MODE_ASYNC)
			info->rbufs[i].buf[count++] = (unsigned char)(reg >> 8);
		if (count == info->rbuf_fill_level || (reg & BIT10)) {
			/* buffer full or end of frame */
			FUNC4(info->rbufs[i], count);
			FUNC5(info->rbufs[i], BIT15 | (reg >> 8));
			info->rbuf_fill_count = count = 0;
			if (++i == info->rbuf_count)
				i = 0;
			info->pending_bh |= BH_RECEIVE;
		}
	}

	info->rbuf_fill_index = i;
	info->rbuf_fill_count = count;
}