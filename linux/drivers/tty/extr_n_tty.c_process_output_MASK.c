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
struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int /*<<< orphan*/  output_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned char,struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(unsigned char c, struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;
	int	space, retval;

	FUNC1(&ldata->output_lock);

	space = FUNC3(tty);
	retval = FUNC0(c, tty, space);

	FUNC2(&ldata->output_lock);
	if (retval < 0)
		return -1;
	else
		return 0;
}