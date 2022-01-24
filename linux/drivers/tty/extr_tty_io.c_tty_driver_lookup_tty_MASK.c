#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct tty_driver {struct tty_struct** ttys; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct tty_struct* (* lookup ) (struct tty_driver*,struct file*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct tty_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 struct tty_struct* FUNC2 (struct tty_driver*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static struct tty_struct *FUNC4(struct tty_driver *driver,
		struct file *file, int idx)
{
	struct tty_struct *tty;

	if (driver->ops->lookup)
		if (!file)
			tty = FUNC0(-EIO);
		else
			tty = driver->ops->lookup(driver, file, idx);
	else
		tty = driver->ttys[idx];

	if (!FUNC1(tty))
		FUNC3(tty);
	return tty;
}