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
struct gs_port {int /*<<< orphan*/  port_write_buf; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static unsigned
FUNC2(struct gs_port *port, char *packet, unsigned size)
{
	unsigned len;

	len = FUNC0(&port->port_write_buf);
	if (len < size)
		size = len;
	if (size != 0)
		size = FUNC1(&port->port_write_buf, packet, size);
	return size;
}