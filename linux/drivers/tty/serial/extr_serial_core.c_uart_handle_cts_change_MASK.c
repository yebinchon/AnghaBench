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
struct TYPE_3__ {int /*<<< orphan*/  cts; } ;
struct uart_port {int hw_stopped; TYPE_2__* ops; TYPE_1__ icount; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop_tx ) (struct uart_port*) ;int /*<<< orphan*/  (* start_tx ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 

void FUNC5(struct uart_port *uport, unsigned int status)
{
	FUNC0(&uport->lock);

	uport->icount.cts++;

	if (FUNC3(uport)) {
		if (uport->hw_stopped) {
			if (status) {
				uport->hw_stopped = 0;
				uport->ops->start_tx(uport);
				FUNC4(uport);
			}
		} else {
			if (!status) {
				uport->hw_stopped = 1;
				uport->ops->stop_tx(uport);
			}
		}

	}
}