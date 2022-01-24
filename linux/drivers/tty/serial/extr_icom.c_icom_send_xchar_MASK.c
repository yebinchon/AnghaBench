#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int /*<<< orphan*/  xchar; } ;

/* Variables and functions */
 TYPE_2__* ICOM_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, char ch)
{
	unsigned char xdata;
	int index;
	unsigned long flags;

	FUNC4(ICOM_PORT, "SEND_XCHAR", ch);

	/* wait .1 sec to send char */
	for (index = 0; index < 10; index++) {
		FUNC2(&port->lock, flags);
		xdata = FUNC1(&ICOM_PORT->dram->xchar);
		if (xdata == 0x00) {
			FUNC4(ICOM_PORT, "QUICK_WRITE", 0);
			FUNC5(ch, &ICOM_PORT->dram->xchar);

			/* flush write operation */
			xdata = FUNC1(&ICOM_PORT->dram->xchar);
			FUNC3(&port->lock, flags);
			break;
		}
		FUNC3(&port->lock, flags);
		FUNC0(10);
	}
}