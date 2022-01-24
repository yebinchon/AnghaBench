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
struct tty_struct {struct n_tty_data* disc_data; scalar_t__ link; } ;
struct n_tty_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct n_tty_data*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (tty->link)
		FUNC0(tty);

	FUNC1(ldata);
	tty->disc_data = NULL;
}