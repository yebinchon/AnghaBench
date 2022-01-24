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
 int epx_c3_alive ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (epx_c3_alive)
		return -EBUSY;

	if (nowayout)
		FUNC0(THIS_MODULE);

	/* Activate timer */
	FUNC2();
	FUNC1();

	epx_c3_alive = 1;
	FUNC3("Started watchdog timer\n");

	return FUNC4(inode, file);
}