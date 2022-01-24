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
struct TYPE_4__ {TYPE_1__* state; int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {TYPE_2__ port; struct uart_pmac_port* mate; } ;
typedef  int irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int CHAEXT ; 
 int CHARxIP ; 
 int CHATxIP ; 
 int CHBEXT ; 
 int CHBRxIP ; 
 int CHBTxIP ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct uart_pmac_port* FUNC2 (struct uart_pmac_port*) ; 
 int FUNC3 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_pmac_port*) ; 
 int FUNC6 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_pmac_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_pmac_port*) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct uart_pmac_port *uap = dev_id;
	struct uart_pmac_port *uap_a;
	struct uart_pmac_port *uap_b;
	int rc = IRQ_NONE;
	bool push;
	u8 r3;

	uap_a = FUNC2(uap);
	uap_b = uap_a->mate;

	FUNC7(&uap_a->port.lock);
	r3 = FUNC6(uap_a, R3);

#ifdef DEBUG_HARD
	pmz_debug("irq, r3: %x\n", r3);
#endif
	/* Channel A */
	push = false;
	if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
		if (!FUNC0(uap_a)) {
			FUNC1("ChanA interrupt while not open !\n");
			goto skip_a;
		}
		FUNC10(uap_a, R0, RES_H_IUS);
		FUNC11(uap_a);		
		if (r3 & CHAEXT)
			FUNC4(uap_a);
		if (r3 & CHARxIP)
			push = FUNC3(uap_a);
		if (r3 & CHATxIP)
			FUNC5(uap_a);
		rc = IRQ_HANDLED;
	}
 skip_a:
	FUNC8(&uap_a->port.lock);
	if (push)
		FUNC9(&uap->port.state->port);

	if (!uap_b)
		goto out;

	FUNC7(&uap_b->port.lock);
	push = false;
	if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
		if (!FUNC0(uap_b)) {
			FUNC1("ChanB interrupt while not open !\n");
			goto skip_b;
		}
		FUNC10(uap_b, R0, RES_H_IUS);
		FUNC11(uap_b);
		if (r3 & CHBEXT)
			FUNC4(uap_b);
		if (r3 & CHBRxIP)
			push = FUNC3(uap_b);
		if (r3 & CHBTxIP)
			FUNC5(uap_b);
		rc = IRQ_HANDLED;
	}
 skip_b:
	FUNC8(&uap_b->port.lock);
	if (push)
		FUNC9(&uap->port.state->port);

 out:
	return rc;
}