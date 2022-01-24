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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MAX_TIMEOUT ; 
 int /*<<< orphan*/  open_flag ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ timeout ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	/* allow one at a time */
	if (FUNC3(0, &open_flag))
		return -EBUSY;

	if (timeout > MAX_TIMEOUT)
		timeout = MAX_TIMEOUT;

	FUNC1();
	FUNC0("Watchdog enabled, timeout = %d min(s)", timeout);

	return FUNC2(inode, file);
}