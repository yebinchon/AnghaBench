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
struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {int /*<<< orphan*/  kbd; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, unsigned int cmd,
			 unsigned long arg)
{
	struct tty3270 *tp;

	tp = tty->driver_data;
	if (!tp)
		return -ENODEV;
	if (FUNC1(tty))
		return -EIO;
	return FUNC0(tp->kbd, cmd, arg);
}