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
struct tty_struct {int count; struct tty3270* driver_data; } ;
struct tty3270 {int /*<<< orphan*/  port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct tty_struct *tty, struct file * filp)
{
	struct tty3270 *tp = tty->driver_data;

	if (tty->count > 1)
		return;
	if (tp)
		FUNC0(&tp->port, NULL);
}