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
struct TYPE_2__ {int /*<<< orphan*/ * idal_buf; } ;
struct tape_device {int required_tapemarks; TYPE_1__ char_data; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  MTREW ; 
 int /*<<< orphan*/  MTWEOF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct tape_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_device*) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *filp)
{
	struct tape_device *device;

	FUNC0(6, "TCHAR:release: %x\n", FUNC2(inode));
	device = (struct tape_device *) filp->private_data;

	/*
	 * If this is the rewinding tape minor then rewind. In that case we
	 * write all required tapemarks. Otherwise only one to terminate the
	 * file.
	 */
	if ((FUNC2(inode) & 1) != 0) {
		if (device->required_tapemarks)
			FUNC6(device);
		FUNC3(device, MTREW, 1);
	} else {
		if (device->required_tapemarks > 1) {
			if (FUNC3(device, MTWEOF, 1) == 0)
				device->required_tapemarks--;
		}
	}

	if (device->char_data.idal_buf != NULL) {
		FUNC1(device->char_data.idal_buf);
		device->char_data.idal_buf = NULL;
	}
	FUNC5(device);
	filp->private_data = NULL;
	FUNC4(device);

	return 0;
}