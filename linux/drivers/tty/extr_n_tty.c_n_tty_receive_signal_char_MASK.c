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
struct tty_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void
FUNC7(struct tty_struct *tty, int signal, unsigned char c)
{
	FUNC4(signal, tty);
	if (FUNC0(tty))
		FUNC6(tty);
	if (FUNC1(tty)) {
		FUNC3(c, tty);
		FUNC2(tty);
	} else
		FUNC5(tty);
	return;
}