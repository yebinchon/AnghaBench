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
struct uart_pmac_port {int dummy; } ;

/* Variables and functions */
 int BRENAB ; 
 int BRSRC ; 
 int CHRA ; 
 int CHRB ; 
 int ERR_RES ; 
 int LOOPBAK ; 
 int MONSYNC ; 
 int NV ; 
 int RCBR ; 
 int RES_EXT_INT ; 
 int RTS ; 
 int Rx8 ; 
 int RxENABLE ; 
 int Rx_CH_AV ; 
 int SB_MASK ; 
 int TCBR ; 
 int Tx8 ; 
 int X16CLK ; 
 int X1CLK ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int FUNC1 (struct uart_pmac_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_pmac_port *uap)
{
	FUNC3(uap, 9, FUNC0(uap) ? CHRA : CHRB);
	FUNC4(uap);
	FUNC2(10);
	FUNC3(uap, 9, (FUNC0(uap) ? CHRA : CHRB) | NV);
	FUNC4(uap);

	FUNC3(uap, 4, X1CLK | MONSYNC);
	FUNC3(uap, 3, Rx8);
	FUNC3(uap, 5, Tx8 | RTS);
	FUNC3(uap, 9, NV);	/* Didn't we already do this? */
	FUNC3(uap, 11, RCBR | TCBR);
	FUNC3(uap, 12, 0);
	FUNC3(uap, 13, 0);
	FUNC3(uap, 14, (LOOPBAK | BRSRC));
	FUNC3(uap, 14, (LOOPBAK | BRSRC | BRENAB));
	FUNC3(uap, 3, Rx8 | RxENABLE);
	FUNC3(uap, 0, RES_EXT_INT);
	FUNC3(uap, 0, RES_EXT_INT);
	FUNC3(uap, 0, RES_EXT_INT);	/* to kill some time */

	/* The channel should be OK now, but it is probably receiving
	 * loopback garbage.
	 * Switch to asynchronous mode, disable the receiver,
	 * and discard everything in the receive buffer.
	 */
	FUNC3(uap, 9, NV);
	FUNC3(uap, 4, X16CLK | SB_MASK);
	FUNC3(uap, 3, Rx8);

	while (FUNC1(uap, 0) & Rx_CH_AV) {
		(void)FUNC1(uap, 8);
		FUNC3(uap, 0, RES_EXT_INT);
		FUNC3(uap, 0, ERR_RES);
	}
}