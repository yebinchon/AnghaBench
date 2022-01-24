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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  tty_mutex ; 

void FUNC6(struct tty_struct *tty, int idx)
{
	/*
	 * Ask the line discipline code to release its structures
	 */
	FUNC5(tty);

	/* Wait for pending work before tty destruction commmences */
	FUNC4(tty);

	FUNC3(tty, "freeing structure\n");
	/*
	 * The release_tty function takes care of the details of clearing
	 * the slots and preserving the termios structure. The tty_unlock_pair
	 * should be safe as we keep a kref while the tty is locked (so the
	 * unlock never unlocks a freed tty).
	 */
	FUNC0(&tty_mutex);
	FUNC2(tty, idx);
	FUNC1(&tty_mutex);
}