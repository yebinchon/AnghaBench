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
 int /*<<< orphan*/  OIER ; 
 int OIER_E3 ; 
 int /*<<< orphan*/  OSCR ; 
 int /*<<< orphan*/  OSMR3 ; 
 int /*<<< orphan*/  OSSR ; 
 int OSSR_M3 ; 
 int /*<<< orphan*/  OWER ; 
 int OWER_WME ; 
 int pre_margin ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa1100wdt_users ; 
 int FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (FUNC2(1, &sa1100wdt_users))
		return -EBUSY;

	/* Activate SA1100 Watchdog timer */
	FUNC3(FUNC0(OSCR) + pre_margin, OSMR3);
	FUNC3(OSSR_M3, OSSR);
	FUNC3(OWER_WME, OWER);
	FUNC3(FUNC0(OIER) | OIER_E3, OIER);
	return FUNC1(inode, file);
}