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
struct uart_driver {unsigned int nr; struct tty_driver* tty_driver; TYPE_1__* state; } ;
struct tty_driver {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_driver*) ; 

void FUNC4(struct uart_driver *drv)
{
	struct tty_driver *p = drv->tty_driver;
	unsigned int i;

	FUNC3(p);
	FUNC1(p);
	for (i = 0; i < drv->nr; i++)
		FUNC2(&drv->state[i].port);
	FUNC0(drv->state);
	drv->state = NULL;
	drv->tty_driver = NULL;
}