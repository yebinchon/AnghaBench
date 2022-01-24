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
struct TYPE_2__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct serial_state {TYPE_1__ xmit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIAL_XMIT_SIZE ; 
 scalar_t__ FUNC1 (struct serial_state*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty)
{
	struct serial_state *info = tty->driver_data;

	if (FUNC1(info, tty->name, "rs_chars_in_buffer"))
		return 0;
	return FUNC0(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
}