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
typedef  int u8 ;
struct jsm_channel {int ch_startc; int ch_stopc; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int /*<<< orphan*/  isr_fcr; int /*<<< orphan*/  ier; int /*<<< orphan*/  lcr; int /*<<< orphan*/  spr; int /*<<< orphan*/  msr; int /*<<< orphan*/  lsr; int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 int UART_16654_FCR_RXTRIGGER_16 ; 
 int UART_16654_FCR_TXTRIGGER_16 ; 
 int UART_EXAR654_EFR_ECB ; 
 int UART_EXAR654_EFR_IXOFF ; 
 int UART_EXAR654_EFR_RTSDTR ; 
 int UART_EXAR654_ENHANCED_REGISTER_SET ; 
 int UART_EXAR654_IER_RTSDTR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_ENABLE_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct jsm_channel *ch)
{
	u8 lcrb = FUNC0(&ch->ch_cls_uart->lcr);
	u8 ier = FUNC0(&ch->ch_cls_uart->ier);
	u8 isr_fcr = 0;

	/*
	 * The Enhanced Register Set may only be accessed when
	 * the Line Control Register is set to 0xBFh.
	 */
	FUNC1(UART_EXAR654_ENHANCED_REGISTER_SET, &ch->ch_cls_uart->lcr);

	isr_fcr = FUNC0(&ch->ch_cls_uart->isr_fcr);

	/* Turn on IXOFF flow control, turn off RTS flow control */
	isr_fcr |= (UART_EXAR654_EFR_ECB | UART_EXAR654_EFR_IXOFF);
	isr_fcr &= ~(UART_EXAR654_EFR_RTSDTR);

	FUNC1(isr_fcr, &ch->ch_cls_uart->isr_fcr);

	/* Now set our current start/stop chars while in enhanced mode */
	FUNC1(ch->ch_startc, &ch->ch_cls_uart->mcr);
	FUNC1(0, &ch->ch_cls_uart->lsr);
	FUNC1(ch->ch_stopc, &ch->ch_cls_uart->msr);
	FUNC1(0, &ch->ch_cls_uart->spr);

	/* Write old LCR value back out, which turns enhanced access off */
	FUNC1(lcrb, &ch->ch_cls_uart->lcr);

	/* Disable interrupts for RTS flow */
	ier &= ~(UART_EXAR654_IER_RTSDTR);
	FUNC1(ier, &ch->ch_cls_uart->ier);

	/* Set the usual FIFO values */
	FUNC1((UART_FCR_ENABLE_FIFO), &ch->ch_cls_uart->isr_fcr);

	FUNC1((UART_FCR_ENABLE_FIFO | UART_16654_FCR_RXTRIGGER_16 |
		UART_16654_FCR_TXTRIGGER_16 | UART_FCR_CLEAR_RCVR),
		&ch->ch_cls_uart->isr_fcr);
}