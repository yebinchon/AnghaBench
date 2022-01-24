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
typedef  int u8 ;
struct jsm_channel {int ch_t_tlevel; int ch_startc; int ch_stopc; TYPE_2__* ch_neo_uart; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ier; int /*<<< orphan*/  xoffchar2; int /*<<< orphan*/  xoffchar1; int /*<<< orphan*/  xonchar2; int /*<<< orphan*/  xonchar1; int /*<<< orphan*/  tfifo; int /*<<< orphan*/  fctr; int /*<<< orphan*/  efr; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARAM ; 
 int UART_17158_EFR_ECB ; 
 int UART_17158_EFR_IXOFF ; 
 int UART_17158_EFR_RTSDTR ; 
 int UART_17158_FCTR_RTS_8DELAY ; 
 int UART_17158_FCTR_TRGD ; 
 int UART_17158_IER_RTSDTR ; 
 int UART_17158_IER_XOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	u8 ier, efr;
	ier = FUNC1(&ch->ch_neo_uart->ier);
	efr = FUNC1(&ch->ch_neo_uart->efr);

	FUNC0(PARAM, &ch->ch_bd->pci_dev, "Setting IXOFF FLOW\n");

	/* Turn off auto RTS flow control */
	ier &= ~(UART_17158_IER_RTSDTR);
	efr &= ~(UART_17158_EFR_RTSDTR);

	/* Turn on auto Xoff flow control */
	ier |= (UART_17158_IER_XOFF);
	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);

	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
	FUNC2(0, &ch->ch_neo_uart->efr);

	/* Turn on UART enhanced bits */
	FUNC2(efr, &ch->ch_neo_uart->efr);

	/* Turn on table D, with 8 char hi/low watermarks */
	FUNC2((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_8DELAY), &ch->ch_neo_uart->fctr);

	FUNC2(8, &ch->ch_neo_uart->tfifo);
	ch->ch_t_tlevel = 8;

	/* Tell UART what start/stop chars it should be looking for */
	FUNC2(ch->ch_startc, &ch->ch_neo_uart->xonchar1);
	FUNC2(0, &ch->ch_neo_uart->xonchar2);

	FUNC2(ch->ch_stopc, &ch->ch_neo_uart->xoffchar1);
	FUNC2(0, &ch->ch_neo_uart->xoffchar2);

	FUNC2(ier, &ch->ch_neo_uart->ier);
}