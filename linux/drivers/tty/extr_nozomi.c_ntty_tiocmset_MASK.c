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
struct nozomi {int /*<<< orphan*/  spin_mutex; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 struct nozomi* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty,
					unsigned int set, unsigned int clear)
{
	struct nozomi *dc = FUNC0(tty);
	unsigned long flags;

	FUNC3(&dc->spin_mutex, flags);
	if (set & TIOCM_RTS)
		FUNC2(tty, 1);
	else if (clear & TIOCM_RTS)
		FUNC2(tty, 0);

	if (set & TIOCM_DTR)
		FUNC1(tty, 1);
	else if (clear & TIOCM_DTR)
		FUNC1(tty, 0);
	FUNC4(&dc->spin_mutex, flags);

	return 0;
}