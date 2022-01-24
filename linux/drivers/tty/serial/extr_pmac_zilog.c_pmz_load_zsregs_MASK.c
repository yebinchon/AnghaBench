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
typedef  int u8 ;
struct uart_pmac_port {int dummy; } ;

/* Variables and functions */
 unsigned char ALL_SNT ; 
 int BRENAB ; 
 int EN85C30 ; 
 int EXT_INT_ENAB ; 
 size_t R0 ; 
 size_t R1 ; 
 size_t R10 ; 
 size_t R11 ; 
 size_t R12 ; 
 size_t R13 ; 
 size_t R14 ; 
 size_t R15 ; 
 size_t R3 ; 
 size_t R4 ; 
 size_t R5 ; 
 size_t R6 ; 
 size_t R7 ; 
 size_t R7P ; 
 size_t R9 ; 
 int RES_EXT_INT ; 
 int RxENABLE ; 
 int RxINT_MASK ; 
 int TxENABLE ; 
 int TxINT_ENAB ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pmac_port*) ; 
 unsigned char FUNC2 (struct uart_pmac_port*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_pmac_port *uap, u8 *regs)
{
	int i;

	/* Let pending transmits finish.  */
	for (i = 0; i < 1000; i++) {
		unsigned char stat = FUNC2(uap, R1);
		if (stat & ALL_SNT)
			break;
		FUNC3(100);
	}

	FUNC0(uap);
	FUNC5(uap);
	FUNC1(uap);
	FUNC5(uap);
	FUNC0(uap);

	/* Disable all interrupts.  */
	FUNC4(uap, R1,
		    regs[R1] & ~(RxINT_MASK | TxINT_ENAB | EXT_INT_ENAB));

	/* Set parity, sync config, stop bits, and clock divisor.  */
	FUNC4(uap, R4, regs[R4]);

	/* Set misc. TX/RX control bits.  */
	FUNC4(uap, R10, regs[R10]);

	/* Set TX/RX controls sans the enable bits.  */
	FUNC4(uap, R3, regs[R3] & ~RxENABLE);
	FUNC4(uap, R5, regs[R5] & ~TxENABLE);

	/* now set R7 "prime" on ESCC */
	FUNC4(uap, R15, regs[R15] | EN85C30);
	FUNC4(uap, R7, regs[R7P]);

	/* make sure we use R7 "non-prime" on ESCC */
	FUNC4(uap, R15, regs[R15] & ~EN85C30);

	/* Synchronous mode config.  */
	FUNC4(uap, R6, regs[R6]);
	FUNC4(uap, R7, regs[R7]);

	/* Disable baud generator.  */
	FUNC4(uap, R14, regs[R14] & ~BRENAB);

	/* Clock mode control.  */
	FUNC4(uap, R11, regs[R11]);

	/* Lower and upper byte of baud rate generator divisor.  */
	FUNC4(uap, R12, regs[R12]);
	FUNC4(uap, R13, regs[R13]);
	
	/* Now rewrite R14, with BRENAB (if set).  */
	FUNC4(uap, R14, regs[R14]);

	/* Reset external status interrupts.  */
	FUNC4(uap, R0, RES_EXT_INT);
	FUNC4(uap, R0, RES_EXT_INT);

	/* Rewrite R3/R5, this time without enables masked.  */
	FUNC4(uap, R3, regs[R3]);
	FUNC4(uap, R5, regs[R5]);

	/* Rewrite R1, this time without IRQ enabled masked.  */
	FUNC4(uap, R1, regs[R1]);

	/* Enable interrupts */
	FUNC4(uap, R9, regs[R9]);
}