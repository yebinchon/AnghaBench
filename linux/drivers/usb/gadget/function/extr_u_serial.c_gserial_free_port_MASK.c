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
struct gs_port {int /*<<< orphan*/  port; int /*<<< orphan*/ * port_usb; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  push; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gs_port *port)
{
	FUNC1(&port->push);
	/* wait for old opens to finish */
	FUNC5(port->close_wait, FUNC2(port));
	FUNC0(port->port_usb != NULL);
	FUNC4(&port->port);
	FUNC3(port);
}