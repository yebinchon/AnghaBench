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
struct jsm_channel {int ch_mostat; TYPE_1__* ch_neo_uart; int /*<<< orphan*/  ch_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  mcr; int /*<<< orphan*/  msr; int /*<<< orphan*/  lsr; int /*<<< orphan*/  isr_fcr; int /*<<< orphan*/  txrx; int /*<<< orphan*/  efr; int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_FIFO_ENABLED ; 
 int UART_EFR_ECB ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct jsm_channel *ch)
{
	FUNC1(0, &ch->ch_neo_uart->ier);
	FUNC1(0, &ch->ch_neo_uart->efr);
	FUNC1(UART_EFR_ECB, &ch->ch_neo_uart->efr);

	/* Clear out UART and FIFO */
	FUNC0(&ch->ch_neo_uart->txrx);
	FUNC1((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT), &ch->ch_neo_uart->isr_fcr);
	FUNC0(&ch->ch_neo_uart->lsr);
	FUNC0(&ch->ch_neo_uart->msr);

	ch->ch_flags |= CH_FIFO_ENABLED;

	/* Assert any signals we want up */
	FUNC1(ch->ch_mostat, &ch->ch_neo_uart->mcr);
}