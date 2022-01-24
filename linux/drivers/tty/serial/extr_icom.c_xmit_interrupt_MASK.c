#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_10__ {unsigned short tx; } ;
struct TYPE_12__ {TYPE_4__* state; TYPE_3__ icount; } ;
struct icom_port {TYPE_5__ uart_port; TYPE_2__* statStg; } ;
struct TYPE_13__ {int tail; } ;
struct TYPE_11__ {TYPE_6__ xmit; } ;
struct TYPE_9__ {TYPE_1__* xmit; } ;
struct TYPE_8__ {int /*<<< orphan*/  leLength; scalar_t__ flags; } ;

/* Variables and functions */
 int INT_XMIT_COMPLETED ; 
 int /*<<< orphan*/  SA_FLAGS_READY_TO_XMIT ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct icom_port*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC5(u16 port_int_reg, struct icom_port *icom_port)
{
	unsigned short int count;
	int i;

	if (port_int_reg & (INT_XMIT_COMPLETED)) {
		FUNC2(icom_port, "XMIT_COMPLETE", 0);

		/* clear buffer in use bit */
		icom_port->statStg->xmit[0].flags &=
			FUNC0(~SA_FLAGS_READY_TO_XMIT);

		count = (unsigned short int)
			FUNC0(icom_port->statStg->xmit[0].leLength);
		icom_port->uart_port.icount.tx += count;

		for (i=0; i<count &&
			!FUNC3(&icom_port->uart_port.state->xmit); i++) {

			icom_port->uart_port.state->xmit.tail++;
			icom_port->uart_port.state->xmit.tail &=
				(UART_XMIT_SIZE - 1);
		}

		if (!FUNC1(&icom_port->uart_port))
			/* activate write queue */
			FUNC4(&icom_port->uart_port);
	} else
		FUNC2(icom_port, "XMIT_DISABLED", 0);
}