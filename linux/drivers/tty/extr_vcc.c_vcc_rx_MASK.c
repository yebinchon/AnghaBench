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
struct tty_struct {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, char *buf, int size)
{
	int len = 0;

	if (FUNC0(!tty || !tty->port))
		return len;

	len = FUNC2(tty->port, buf, size);
	if (len)
		FUNC1(tty->port);

	return len;
}