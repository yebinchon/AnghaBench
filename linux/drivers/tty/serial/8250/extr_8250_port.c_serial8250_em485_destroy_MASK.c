#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_8250_port {TYPE_1__* em485; } ;
struct TYPE_2__ {int /*<<< orphan*/  stop_tx_timer; int /*<<< orphan*/  start_tx_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(struct uart_8250_port *p)
{
	if (!p->em485)
		return;

	FUNC0(&p->em485->start_tx_timer);
	FUNC0(&p->em485->stop_tx_timer);

	FUNC1(p->em485);
	p->em485 = NULL;
}