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
struct uart_port {TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct eg20t_port {struct uart_port port; } ;
struct TYPE_2__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_port*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC2(struct eg20t_port *priv, const unsigned char *buf,
		   int size)
{
	struct uart_port *port = &priv->port;
	struct tty_port *tport = &port->state->port;

	FUNC1(tport, buf, size);
	FUNC0(tport);

	return 0;
}