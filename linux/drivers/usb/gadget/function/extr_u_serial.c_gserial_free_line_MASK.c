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
struct gs_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct gs_port* port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  gs_tty_driver ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ports ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

void FUNC6(unsigned char port_num)
{
	struct gs_port	*port;

	FUNC3(&ports[port_num].lock);
	if (FUNC0(!ports[port_num].port)) {
		FUNC4(&ports[port_num].lock);
		return;
	}
	port = ports[port_num].port;
	ports[port_num].port = NULL;
	FUNC4(&ports[port_num].lock);

	FUNC2(port);
	FUNC5(gs_tty_driver, port_num);
	FUNC1();
}