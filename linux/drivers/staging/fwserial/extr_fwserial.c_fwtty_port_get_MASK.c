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
struct fwtty_port {TYPE_1__* serial; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 unsigned int MAX_TOTAL_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fwtty_port** port_table ; 
 int /*<<< orphan*/  port_table_lock ; 

__attribute__((used)) static struct fwtty_port *FUNC3(unsigned int index)
{
	struct fwtty_port *port;

	if (index >= MAX_TOTAL_PORTS)
		return NULL;

	FUNC1(&port_table_lock);
	port = port_table[index];
	if (port)
		FUNC0(&port->serial->kref);
	FUNC2(&port_table_lock);
	return port;
}