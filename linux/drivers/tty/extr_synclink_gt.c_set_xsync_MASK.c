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
struct slgt_info {int xsync; int /*<<< orphan*/  lock; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct slgt_info *info, int xsync)
{
	unsigned long flags;

	FUNC0(("%s set_xsync=%x)\n", info->device_name, xsync));
	FUNC1(&info->lock, flags);
	info->xsync = xsync;
	FUNC3(info, XSR, xsync);
	FUNC2(&info->lock, flags);
	return 0;
}