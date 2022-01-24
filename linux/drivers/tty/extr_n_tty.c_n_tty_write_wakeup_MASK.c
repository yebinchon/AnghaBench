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
struct tty_struct {int /*<<< orphan*/  fasync; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
	FUNC1(&tty->fasync, SIGIO, POLL_OUT);
}