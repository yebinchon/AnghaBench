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
struct TYPE_2__ {int /*<<< orphan*/  c_cflag; } ;
struct tty_struct {TYPE_1__ termios; struct moxa_port* driver_data; } ;
struct moxa_port {int /*<<< orphan*/  port; int /*<<< orphan*/  cflag; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 

__attribute__((used)) static void FUNC1(struct tty_struct *tty, struct file *filp)
{
	struct moxa_port *ch = tty->driver_data;
	ch->cflag = tty->termios.c_cflag;
	FUNC0(&ch->port, tty, filp);
}