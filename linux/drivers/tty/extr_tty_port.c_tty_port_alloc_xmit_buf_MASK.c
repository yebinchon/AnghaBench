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
struct tty_port {unsigned char* xmit_buf; int /*<<< orphan*/  buf_mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct tty_port *port)
{
	/* We may sleep in get_zeroed_page() */
	FUNC1(&port->buf_mutex);
	if (port->xmit_buf == NULL)
		port->xmit_buf = (unsigned char *)FUNC0(GFP_KERNEL);
	FUNC2(&port->buf_mutex);
	if (port->xmit_buf == NULL)
		return -ENOMEM;
	return 0;
}