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
struct tty_dev {struct gdm** gdm; } ;
struct gdm {size_t index; size_t minor; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int TTY_MAX_COUNT ; 
 int /*<<< orphan*/ * gdm_driver ; 
 int /*<<< orphan*/ *** gdm_table ; 
 int /*<<< orphan*/  gdm_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

void FUNC7(struct tty_dev *tty_dev)
{
	struct gdm *gdm;
	struct tty_struct *tty;
	int i;

	for (i = 0; i < TTY_MAX_COUNT; i++) {
		gdm = tty_dev->gdm[i];
		if (!gdm)
			continue;

		FUNC0(&gdm_table_lock);
		gdm_table[gdm->index][gdm->minor] = NULL;
		FUNC1(&gdm_table_lock);

		tty = FUNC4(&gdm->port);
		if (tty) {
			FUNC6(tty);
			FUNC2(tty);
		}

		FUNC5(gdm_driver[i], gdm->minor);
		FUNC3(&gdm->port);
	}
}