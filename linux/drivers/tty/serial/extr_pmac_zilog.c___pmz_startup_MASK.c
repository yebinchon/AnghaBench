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
struct uart_pmac_port {int* curregs; int /*<<< orphan*/  prev_status; } ;

/* Variables and functions */
 int BRENAB ; 
 int BRKIE ; 
 int CHRA ; 
 int CHRB ; 
 int DTR ; 
 int ERR_RES ; 
 int MIE ; 
 int NV ; 
 size_t R0 ; 
 size_t R1 ; 
 size_t R12 ; 
 size_t R13 ; 
 size_t R14 ; 
 size_t R15 ; 
 size_t R3 ; 
 size_t R4 ; 
 size_t R5 ; 
 size_t R9 ; 
 int RES_H_IUS ; 
 int RTS ; 
 int Rx8 ; 
 int RxENABLE ; 
 int SB1 ; 
 int Tx8 ; 
 int TxENABLE ; 
 int X16CLK ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*,int*) ; 
 int FUNC5 (struct uart_pmac_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pmac_port*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_pmac_port*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_pmac_port*) ; 

__attribute__((used)) static int FUNC10(struct uart_pmac_port *uap)
{
	int pwr_delay = 0;

	FUNC2(&uap->curregs, 0, sizeof(uap->curregs));

	/* Power up the SCC & underlying hardware (modem/irda) */
	pwr_delay = FUNC5(uap, 1);

	/* Nice buggy HW ... */
	FUNC3(uap);

	/* Reset the channel */
	uap->curregs[R9] = 0;
	FUNC8(uap, 9, FUNC0(uap) ? CHRA : CHRB);
	FUNC9(uap);
	FUNC7(10);
	FUNC8(uap, 9, 0);
	FUNC9(uap);

	/* Clear the interrupt registers */
	FUNC8(uap, R1, 0);
	FUNC8(uap, R0, ERR_RES);
	FUNC8(uap, R0, ERR_RES);
	FUNC8(uap, R0, RES_H_IUS);
	FUNC8(uap, R0, RES_H_IUS);

	/* Setup some valid baud rate */
	uap->curregs[R4] = X16CLK | SB1;
	uap->curregs[R3] = Rx8;
	uap->curregs[R5] = Tx8 | RTS;
	if (!FUNC1(uap))
		uap->curregs[R5] |= DTR;
	uap->curregs[R12] = 0;
	uap->curregs[R13] = 0;
	uap->curregs[R14] = BRENAB;

	/* Clear handshaking, enable BREAK interrupts */
	uap->curregs[R15] = BRKIE;

	/* Master interrupt enable */
	uap->curregs[R9] |= NV | MIE;

	FUNC4(uap, uap->curregs);

	/* Enable receiver and transmitter.  */
	FUNC8(uap, R3, uap->curregs[R3] |= RxENABLE);
	FUNC8(uap, R5, uap->curregs[R5] |= TxENABLE);

	/* Remember status for DCD/CTS changes */
	uap->prev_status = FUNC6(uap, R0);

	return pwr_delay;
}