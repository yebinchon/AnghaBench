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
struct tty_struct {int count; int /*<<< orphan*/  port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty, struct file *vcc_file)
{
	if (FUNC2(!tty)) {
		FUNC0("VCC: close: Invalid TTY handle\n");
		return;
	}

	if (FUNC2(tty->count > 1))
		return;

	if (FUNC2(!tty->port)) {
		FUNC0("VCC: close: TTY port not found\n");
		return;
	}

	FUNC1(tty->port, tty, vcc_file);
}