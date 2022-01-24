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
typedef  int /*<<< orphan*/  u8 ;
struct tcw {int dummy; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_DEFAULT_KEY ; 
 int FUNC0 (struct ccw_device*,struct tcw*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct ccw_device *cdev, struct tcw *tcw,
			       unsigned long intparm, u8 lpm, int expires)
{
	return FUNC0(cdev, tcw, intparm, lpm,
					       PAGE_DEFAULT_KEY, expires);
}