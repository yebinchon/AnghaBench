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
struct tty_struct {int /*<<< orphan*/  name; struct serial_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; scalar_t__ count; } ;
struct serial_state {TYPE_1__ tport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct serial_state*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct serial_state *info = tty->driver_data;

	if (FUNC1(info, tty->name, "rs_hangup"))
		return;

	FUNC0(tty);
	FUNC2(tty, info);
	info->tport.count = 0;
	FUNC3(&info->tport, 0);
	info->tport.tty = NULL;
	FUNC4(&info->tport.open_wait);
}