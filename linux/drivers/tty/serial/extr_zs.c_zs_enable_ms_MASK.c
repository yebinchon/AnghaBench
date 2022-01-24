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
 int CTSIE ; 
 int DCDIE ; 
 int EXT_INT_ENAB ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R15 ; 
 int RES_EXT_INT ; 
 int SYNCIE ; 
 size_t ZS_CHAN_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct zs_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport)
{
	struct zs_port *zport = FUNC2(uport);
	struct zs_scc *scc = zport->scc;
	struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];

	if (zport == zport_a)
		return;

	FUNC0(&scc->zlock);

	/* Clear Ext interrupts if not being handled already.  */
	if (!(zport_a->regs[1] & EXT_INT_ENAB))
		FUNC3(zport_a, R0, RES_EXT_INT);

	/* A-side DCD tracks RI and SYNC tracks DSR.  */
	zport_a->regs[1] |= EXT_INT_ENAB;
	zport_a->regs[15] |= DCDIE | SYNCIE;

	/* This-side DCD tracks DCD and CTS tracks CTS.  */
	zport->regs[15] |= DCDIE | CTSIE;

	FUNC4(zport);

	FUNC3(zport_a, R1, zport_a->regs[1]);
	FUNC3(zport_a, R15, zport_a->regs[15]);
	FUNC3(zport, R15, zport->regs[15]);
	FUNC1(&scc->zlock);
}