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
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  mraid_mm_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC3(struct file *filep, unsigned int cmd,
		        unsigned long arg)
{
	int err;

	/* inconsistent: mraid_mm_compat_ioctl doesn't take the BKL */
	FUNC1(&mraid_mm_mutex);
	err = FUNC0(filep, cmd, arg);
	FUNC2(&mraid_mm_mutex);

	return err;
}