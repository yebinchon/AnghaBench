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
struct tty_port {int close_delay; int closing_wait; int /*<<< orphan*/  kref; int /*<<< orphan*/ * client_ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  open_wait; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  default_client_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 

void FUNC6(struct tty_port *port)
{
	FUNC2(port, 0, sizeof(*port));
	FUNC5(port);
	FUNC0(&port->open_wait);
	FUNC0(&port->delta_msr_wait);
	FUNC3(&port->mutex);
	FUNC3(&port->buf_mutex);
	FUNC4(&port->lock);
	port->close_delay = (50 * HZ) / 100;
	port->closing_wait = (3000 * HZ) / 100;
	port->client_ops = &default_client_ops;
	FUNC1(&port->kref);
}