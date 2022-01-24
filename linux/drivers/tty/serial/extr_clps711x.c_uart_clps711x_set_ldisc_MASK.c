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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  line; } ;
struct ktermios {scalar_t__ c_line; } ;
struct clps711x_port {int /*<<< orphan*/  syscon; } ;

/* Variables and functions */
 scalar_t__ N_IRDA ; 
 int /*<<< orphan*/  SYSCON1_SIREN ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 struct clps711x_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port,
				    struct ktermios *termios)
{
	if (!port->line) {
		struct clps711x_port *s = FUNC0(port->dev);

		FUNC1(s->syscon, SYSCON_OFFSET, SYSCON1_SIREN,
				   (termios->c_line == N_IRDA) ? SYSCON1_SIREN : 0);
	}
}