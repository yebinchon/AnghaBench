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
 scalar_t__ VERBOSE ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  is_active ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	/* /dev/watchdog can only be opened once */
	if (FUNC4(0, &is_active)) {
		if (debug >= VERBOSE)
			FUNC2("Attempt to open already opened device\n");
		return -EBUSY;
	}

	/* Activate */
	FUNC1();
	FUNC0();
	return FUNC3(inode, file);
}