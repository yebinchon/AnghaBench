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
struct tty_struct {int /*<<< orphan*/  name; struct cyclades_port* driver_data; } ;
struct file {int dummy; } ;
struct cyclades_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cyclades_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty, struct file *filp)
{
	struct cyclades_port *info = tty->driver_data;
	if (!info || FUNC0(info, tty->name, "cy_close"))
		return;
	FUNC1(&info->port, tty, filp);
}