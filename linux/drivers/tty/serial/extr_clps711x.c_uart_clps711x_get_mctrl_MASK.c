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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct clps711x_port {int /*<<< orphan*/  gpios; } ;

/* Variables and functions */
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 struct clps711x_port* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC2(struct uart_port *port)
{
	unsigned int result = TIOCM_DSR | TIOCM_CTS | TIOCM_CAR;
	struct clps711x_port *s = FUNC0(port->dev);

	return FUNC1(s->gpios, &result);
}