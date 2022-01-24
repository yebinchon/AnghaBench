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
struct tape_device {int /*<<< orphan*/  mutex; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 long FUNC1 (struct tape_device*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC4(struct file *filp, unsigned int no, unsigned long data)
{
	struct tape_device *device;
	long rc;

	FUNC0(6, "TCHAR:ioct\n");

	device = (struct tape_device *) filp->private_data;
	FUNC2(&device->mutex);
	rc = FUNC1(device, no, data);
	FUNC3(&device->mutex);
	return rc;
}