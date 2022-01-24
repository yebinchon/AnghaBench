#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tape_device {int first_minor; TYPE_1__* cdev; void* rt; void* nt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  tape_fops ; 
 int /*<<< orphan*/  tapechar_major ; 

int
FUNC3(struct tape_device * device)
{
	char	device_name[20];

	FUNC2(device_name, "ntibm%i", device->first_minor / 2);
	device->nt = FUNC1(
		&device->cdev->dev,
		FUNC0(tapechar_major, device->first_minor),
		&tape_fops,
		device_name,
		"non-rewinding"
	);
	device_name[0] = 'r';
	device->rt = FUNC1(
		&device->cdev->dev,
		FUNC0(tapechar_major, device->first_minor + 1),
		&tape_fops,
		device_name,
		"rewinding"
	);

	return 0;
}