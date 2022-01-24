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
typedef  int u16 ;
struct urdev {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ccw_device* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  ur_driver ; 
 struct urdev* FUNC3 (struct ccw_device*) ; 

__attribute__((used)) static struct urdev *FUNC4(u16 devno)
{
	char bus_id[16];
	struct ccw_device *cdev;
	struct urdev *urd;

	FUNC2(bus_id, "0.0.%04x", devno);
	cdev = FUNC0(&ur_driver, bus_id);
	if (!cdev)
		return NULL;
	urd = FUNC3(cdev);
	FUNC1(&cdev->dev);
	return urd;
}