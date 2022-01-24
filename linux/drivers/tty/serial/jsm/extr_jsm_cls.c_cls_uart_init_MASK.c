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
struct jsm_channel {int ch_flags; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int /*<<< orphan*/  msr; int /*<<< orphan*/  lsr; int /*<<< orphan*/  isr_fcr; int /*<<< orphan*/  txrx; int /*<<< orphan*/  lcr; int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int CH_FIFO_ENABLED ; 
 int CH_TX_FIFO_EMPTY ; 
 int CH_TX_FIFO_LWM ; 
 unsigned char UART_EXAR654_EFR_ECB ; 
 unsigned char UART_EXAR654_ENHANCED_REGISTER_SET ; 
 unsigned char UART_FCR_CLEAR_RCVR ; 
 unsigned char UART_FCR_CLEAR_XMIT ; 
 unsigned char UART_FCR_ENABLE_FIFO ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	unsigned char lcrb = FUNC0(&ch->ch_cls_uart->lcr);
	unsigned char isr_fcr = 0;

	FUNC2(0, &ch->ch_cls_uart->ier);

	/*
	 * The Enhanced Register Set may only be accessed when
	 * the Line Control Register is set to 0xBFh.
	 */
	FUNC2(UART_EXAR654_ENHANCED_REGISTER_SET, &ch->ch_cls_uart->lcr);

	isr_fcr = FUNC0(&ch->ch_cls_uart->isr_fcr);

	/* Turn on Enhanced/Extended controls */
	isr_fcr |= (UART_EXAR654_EFR_ECB);

	FUNC2(isr_fcr, &ch->ch_cls_uart->isr_fcr);

	/* Write old LCR value back out, which turns enhanced access off */
	FUNC2(lcrb, &ch->ch_cls_uart->lcr);

	/* Clear out UART and FIFO */
	FUNC0(&ch->ch_cls_uart->txrx);

	FUNC2((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
						 &ch->ch_cls_uart->isr_fcr);
	FUNC1(10);

	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

	FUNC0(&ch->ch_cls_uart->lsr);
	FUNC0(&ch->ch_cls_uart->msr);
}