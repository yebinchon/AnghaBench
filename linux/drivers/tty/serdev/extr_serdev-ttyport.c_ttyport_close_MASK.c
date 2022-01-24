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
struct serport {int /*<<< orphan*/  tty_idx; int /*<<< orphan*/  flags; struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct tty_struct*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct serport* FUNC1 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct serdev_controller *ctrl)
{
	struct serport *serport = FUNC1(ctrl);
	struct tty_struct *tty = serport->tty;

	FUNC0(SERPORT_ACTIVE, &serport->flags);

	FUNC3(tty);
	if (tty->ops->close)
		tty->ops->close(tty, NULL);
	FUNC5(tty);

	FUNC4(tty, serport->tty_idx);
}