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
struct dbc_port {int /*<<< orphan*/  write_fifo; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC2(struct dbc_port *port, char *packet, unsigned int size)
{
	unsigned int		len;

	len = FUNC0(&port->write_fifo);
	if (len < size)
		size = len;
	if (size != 0)
		size = FUNC1(&port->write_fifo, packet, size);
	return size;
}