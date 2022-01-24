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
struct tty_struct {scalar_t__ magic; int /*<<< orphan*/  legacy_mutex; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ TTY_MAGIC ; 
 scalar_t__ FUNC0 (int,char*,struct tty_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

int FUNC4(struct tty_struct *tty)
{
	int ret;

	if (FUNC0(tty->magic != TTY_MAGIC, "L Bad %p\n", tty))
		return -EIO;
	FUNC2(tty);
	ret = FUNC1(&tty->legacy_mutex);
	if (ret)
		FUNC3(tty);
	return ret;
}