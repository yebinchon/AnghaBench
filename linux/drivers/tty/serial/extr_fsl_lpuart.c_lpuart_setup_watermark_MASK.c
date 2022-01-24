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
struct TYPE_2__ {scalar_t__ membase; } ;
struct lpuart_port {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UARTCFIFO ; 
 unsigned char UARTCFIFO_RXFLUSH ; 
 unsigned char UARTCFIFO_TXFLUSH ; 
 scalar_t__ UARTCR2 ; 
 unsigned char UARTCR2_RE ; 
 unsigned char UARTCR2_RIE ; 
 unsigned char UARTCR2_TCIE ; 
 unsigned char UARTCR2_TE ; 
 unsigned char UARTCR2_TIE ; 
 scalar_t__ UARTDR ; 
 scalar_t__ UARTPFIFO ; 
 unsigned char UARTPFIFO_RXFE ; 
 unsigned char UARTPFIFO_TXFE ; 
 scalar_t__ UARTRWFIFO ; 
 scalar_t__ UARTSFIFO ; 
 unsigned char UARTSFIFO_RXUF ; 
 scalar_t__ UARTSR1 ; 
 int UARTSR1_RDRF ; 
 scalar_t__ UARTTWFIFO ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct lpuart_port *sport)
{
	unsigned char val, cr2;
	unsigned char cr2_saved;

	cr2 = FUNC0(sport->port.membase + UARTCR2);
	cr2_saved = cr2;
	cr2 &= ~(UARTCR2_TIE | UARTCR2_TCIE | UARTCR2_TE |
			UARTCR2_RIE | UARTCR2_RE);
	FUNC1(cr2, sport->port.membase + UARTCR2);

	val = FUNC0(sport->port.membase + UARTPFIFO);
	FUNC1(val | UARTPFIFO_TXFE | UARTPFIFO_RXFE,
			sport->port.membase + UARTPFIFO);

	/* flush Tx and Rx FIFO */
	FUNC1(UARTCFIFO_TXFLUSH | UARTCFIFO_RXFLUSH,
			sport->port.membase + UARTCFIFO);

	/* explicitly clear RDRF */
	if (FUNC0(sport->port.membase + UARTSR1) & UARTSR1_RDRF) {
		FUNC0(sport->port.membase + UARTDR);
		FUNC1(UARTSFIFO_RXUF, sport->port.membase + UARTSFIFO);
	}

	FUNC1(0, sport->port.membase + UARTTWFIFO);
	FUNC1(1, sport->port.membase + UARTRWFIFO);

	/* Restore cr2 */
	FUNC1(cr2_saved, sport->port.membase + UARTCR2);
}