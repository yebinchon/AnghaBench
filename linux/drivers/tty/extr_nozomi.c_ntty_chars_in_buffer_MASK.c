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
struct tty_struct {struct port* driver_data; } ;
struct port {int /*<<< orphan*/  fifo_ul; } ;
struct nozomi {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 struct nozomi* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static s32 FUNC3(struct tty_struct *tty)
{
	struct port *port = tty->driver_data;
	struct nozomi *dc = FUNC0(tty);
	s32 rval = 0;

	if (FUNC2(!dc || !port)) {
		goto exit_in_buffer;
	}

	rval = FUNC1(&port->fifo_ul);

exit_in_buffer:
	return rval;
}