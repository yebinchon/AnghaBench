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
struct tty_struct {int /*<<< orphan*/  port; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_THROTTLED ; 
 scalar_t__ VCC_BUFF_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, int size)
{
	if (FUNC0(!tty || !tty->port))
		return 1;

	/* tty_buffer_request_room won't sleep because it uses
	 * GFP_ATOMIC flag to allocate buffer
	 */
	if (FUNC1(TTY_THROTTLED, &tty->flags) ||
	    (FUNC2(tty->port, VCC_BUFF_LEN) < VCC_BUFF_LEN))
		return 0;

	return 1;
}