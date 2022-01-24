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
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  pnx833x_wdt_alive ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  start_enabled ; 
 int FUNC4 (struct inode*,struct file*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	if (FUNC5(0, &pnx833x_wdt_alive))
		return -EBUSY;

	if (nowayout)
		FUNC0(THIS_MODULE);

	/* Activate timer */
	if (!start_enabled)
		FUNC2();

	FUNC1();

	FUNC3("Started watchdog timer\n");

	return FUNC4(inode, file);
}