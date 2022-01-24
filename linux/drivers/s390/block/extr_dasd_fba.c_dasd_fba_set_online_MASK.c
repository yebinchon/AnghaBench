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
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dasd_fba_discipline ; 
 int FUNC0 (struct ccw_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct ccw_device *cdev)
{
	return FUNC0(cdev, &dasd_fba_discipline);
}