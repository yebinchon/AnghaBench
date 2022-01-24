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
struct gb_tty {int minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_NUM_MINORS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct gb_tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  table_lock ; 
 int /*<<< orphan*/  tty_minors ; 

__attribute__((used)) static int FUNC3(struct gb_tty *gb_tty)
{
	int minor;

	FUNC1(&table_lock);
	minor = FUNC0(&tty_minors, gb_tty, 0, GB_NUM_MINORS, GFP_KERNEL);
	FUNC2(&table_lock);
	if (minor >= 0)
		gb_tty->minor = minor;
	return minor;
}