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
struct jsm_channel {int ch_c_iflag; int ch_t_tlevel; int ch_r_tlevel; TYPE_2__* ch_neo_uart; scalar_t__ ch_r_watermark; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ier; int /*<<< orphan*/  rfifo; int /*<<< orphan*/  tfifo; int /*<<< orphan*/  fctr; int /*<<< orphan*/  efr; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int IXOFF ; 
 int /*<<< orphan*/  PARAM ; 
 int UART_17158_EFR_CTSDSR ; 
 int UART_17158_EFR_ECB ; 
 int UART_17158_EFR_IXON ; 
 int UART_17158_FCTR_RTS_8DELAY ; 
 int UART_17158_FCTR_TRGD ; 
 int UART_17158_IER_CTSDSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	u8 ier, efr;
	ier = FUNC1(&ch->ch_neo_uart->ier);
	efr = FUNC1(&ch->ch_neo_uart->efr);

	FUNC0(PARAM, &ch->ch_bd->pci_dev, "Unsetting Output FLOW\n");

	/* Turn off auto CTS flow control */
	ier &= ~(UART_17158_IER_CTSDSR);
	efr &= ~(UART_17158_EFR_CTSDSR);

	/* Turn off auto Xon flow control */
	if (ch->ch_c_iflag & IXOFF)
		efr &= ~(UART_17158_EFR_IXON);
	else
		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXON);

	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
	FUNC2(0, &ch->ch_neo_uart->efr);

	/* Turn on UART enhanced bits */
	FUNC2(efr, &ch->ch_neo_uart->efr);

	/* Turn on table D, with 8 char hi/low watermarks */
	FUNC2((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_8DELAY), &ch->ch_neo_uart->fctr);

	ch->ch_r_watermark = 0;

	FUNC2(16, &ch->ch_neo_uart->tfifo);
	ch->ch_t_tlevel = 16;

	FUNC2(16, &ch->ch_neo_uart->rfifo);
	ch->ch_r_tlevel = 16;

	FUNC2(ier, &ch->ch_neo_uart->ier);
}