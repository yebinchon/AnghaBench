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
struct zs_scc {int /*<<< orphan*/  zlock; struct zs_port* zport; } ;
struct zs_port {int* regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int BRKIE ; 
 int CTSIE ; 
 int DCDIE ; 
 int EXT_INT_ENAB ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R15 ; 
 int RxINT_DISAB ; 
 int RxINT_MASK ; 
 int SYNCIE ; 
 int TxINT_ENAB ; 
 size_t ZS_CHAN_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct zs_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *uport)
{
	struct zs_port *zport = FUNC2(uport);
	struct zs_scc *scc = zport->scc;
	struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];

	FUNC0(&scc->zlock);
	zport->regs[15] &= ~BRKIE;
	zport->regs[1] &= ~(RxINT_MASK | TxINT_ENAB);
	zport->regs[1] |= RxINT_DISAB;

	if (zport != zport_a) {
		/* A-side DCD tracks RI and SYNC tracks DSR.  */
		zport_a->regs[15] &= ~(DCDIE | SYNCIE);
		FUNC3(zport_a, R15, zport_a->regs[15]);
		if (!(zport_a->regs[15] & BRKIE)) {
			zport_a->regs[1] &= ~EXT_INT_ENAB;
			FUNC3(zport_a, R1, zport_a->regs[1]);
		}

		/* This-side DCD tracks DCD and CTS tracks CTS.  */
		zport->regs[15] &= ~(DCDIE | CTSIE);
		zport->regs[1] &= ~EXT_INT_ENAB;
	} else {
		/* DCD tracks RI and SYNC tracks DSR for the B side.  */
		if (!(zport->regs[15] & (DCDIE | SYNCIE)))
			zport->regs[1] &= ~EXT_INT_ENAB;
	}

	FUNC3(zport, R15, zport->regs[15]);
	FUNC3(zport, R1, zport->regs[1]);
	FUNC1(&scc->zlock);
}