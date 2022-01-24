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
struct n_tty_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (char,struct n_tty_data*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (FUNC1(tty))
		return;
	if (FUNC0(tty)) {
		FUNC3(SIGINT, tty);
		return;
	}
	if (FUNC2(tty)) {
		FUNC4('\377', ldata);
		FUNC4('\0', ldata);
	}
	FUNC4('\0', ldata);
}