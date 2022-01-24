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
struct zs_port {int dummy; } ;

/* Variables and functions */
 int BRENABL ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R11 ; 
 int /*<<< orphan*/  R12 ; 
 int /*<<< orphan*/  R13 ; 
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R9 ; 
 int RxENABLE ; 
 int TxENAB ; 
 int /*<<< orphan*/  FUNC0 (struct zs_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zs_port*,int) ; 

__attribute__((used)) static void FUNC2(struct zs_port *zport, u8 *regs, int irq)
{
	/* Let the current transmission finish.  */
	FUNC1(zport, irq);
	/* Load 'em up.  */
	FUNC0(zport, R3, regs[3] & ~RxENABLE);
	FUNC0(zport, R5, regs[5] & ~TxENAB);
	FUNC0(zport, R4, regs[4]);
	FUNC0(zport, R9, regs[9]);
	FUNC0(zport, R1, regs[1]);
	FUNC0(zport, R2, regs[2]);
	FUNC0(zport, R10, regs[10]);
	FUNC0(zport, R14, regs[14] & ~BRENABL);
	FUNC0(zport, R11, regs[11]);
	FUNC0(zport, R12, regs[12]);
	FUNC0(zport, R13, regs[13]);
	FUNC0(zport, R14, regs[14]);
	FUNC0(zport, R15, regs[15]);
	if (regs[3] & RxENABLE)
		FUNC0(zport, R3, regs[3]);
	if (regs[5] & TxENAB)
		FUNC0(zport, R5, regs[5]);
	return;
}