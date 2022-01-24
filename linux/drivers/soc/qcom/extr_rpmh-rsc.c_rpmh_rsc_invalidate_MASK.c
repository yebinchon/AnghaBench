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
struct rsc_drv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLEEP_TCS ; 
 int /*<<< orphan*/  WAKE_TCS ; 
 int FUNC0 (struct rsc_drv*,int /*<<< orphan*/ ) ; 

int FUNC1(struct rsc_drv *drv)
{
	int ret;

	ret = FUNC0(drv, SLEEP_TCS);
	if (!ret)
		ret = FUNC0(drv, WAKE_TCS);

	return ret;
}