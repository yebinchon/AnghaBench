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
struct tty_struct {TYPE_1__* ops; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* tiocmget ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 struct serport* FUNC0 (struct serdev_controller*) ; 
 int FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC2(struct serdev_controller *ctrl)
{
	struct serport *serport = FUNC0(ctrl);
	struct tty_struct *tty = serport->tty;

	if (!tty->ops->tiocmget)
		return -ENOTSUPP;

	return tty->ops->tiocmget(tty);
}