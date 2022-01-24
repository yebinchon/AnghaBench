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
struct file {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 int FUNC0 (int,struct file*,int) ; 
 struct tty_struct* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC5(int fd, struct file *filp, int on)
{
	struct tty_struct *tty = FUNC1(filp);
	int retval = -ENOTTY;

	FUNC3(tty);
	if (!FUNC2(filp))
		retval = FUNC0(fd, filp, on);
	FUNC4(tty);

	return retval;
}