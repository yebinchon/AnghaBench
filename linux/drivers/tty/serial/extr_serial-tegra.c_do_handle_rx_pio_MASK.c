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
struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct tegra_uart_port {TYPE_2__ uport; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_uart_port*,struct tty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct tty_struct* FUNC3 (struct tty_port*) ; 

__attribute__((used)) static void FUNC4(struct tegra_uart_port *tup)
{
	struct tty_struct *tty = FUNC3(&tup->uport.state->port);
	struct tty_port *port = &tup->uport.state->port;

	FUNC0(tup, port);
	if (tty) {
		FUNC1(port);
		FUNC2(tty);
	}
}