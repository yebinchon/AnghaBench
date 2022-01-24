#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mode; int flags; } ;
struct slgt_info {int tx_enabled; size_t tbuf_start; int drop_rts_on_tx_done; int signals; int tx_active; TYPE_2__* tbufs; TYPE_1__ params; } ;
struct TYPE_4__ {scalar_t__ pdesc; } ;

/* Variables and functions */
 scalar_t__ BIT0 ; 
 int BIT1 ; 
 int BIT2 ; 
 int HDLC_FLAG_AUTO_RTS ; 
 int /*<<< orphan*/  IRQ_TXDATA ; 
 unsigned short IRQ_TXIDLE ; 
 unsigned short IRQ_TXUNDER ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  SSR ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  TDCSR ; 
 int /*<<< orphan*/  TDDAR ; 
 scalar_t__ FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int FUNC2 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct slgt_info *info)
{
	if (!info->tx_enabled) {
		FUNC6(info, TCR,
			 (unsigned short)((FUNC2(info, TCR) | BIT1) & ~BIT2));
		info->tx_enabled = true;
	}

	if (FUNC0(info->tbufs[info->tbuf_start])) {
		info->drop_rts_on_tx_done = false;

		if (info->params.mode != MGSL_MODE_ASYNC) {
			if (info->params.flags & HDLC_FLAG_AUTO_RTS) {
				FUNC1(info);
				if (!(info->signals & SerialSignal_RTS)) {
					info->signals |= SerialSignal_RTS;
					FUNC3(info);
					info->drop_rts_on_tx_done = true;
				}
			}

			FUNC4(info, IRQ_TXDATA);
			FUNC5(info, IRQ_TXUNDER + IRQ_TXIDLE);
			/* clear tx idle and underrun status bits */
			FUNC6(info, SSR, (unsigned short)(IRQ_TXIDLE + IRQ_TXUNDER));
		} else {
			FUNC4(info, IRQ_TXDATA);
			FUNC5(info, IRQ_TXIDLE);
			/* clear tx idle status bit */
			FUNC6(info, SSR, IRQ_TXIDLE);
		}
		/* set 1st descriptor address and start DMA */
		FUNC7(info, TDDAR, info->tbufs[info->tbuf_start].pdesc);
		FUNC7(info, TDCSR, BIT2 + BIT0);
		info->tx_active = true;
	}
}