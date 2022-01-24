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
struct tape_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct tape_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct tape_device*) ; 
 int FUNC2 (struct tape_device*) ; 
 int TAPE_MINORS_PER_DEV ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct file*) ; 
 struct tape_device* FUNC7 (int) ; 
 int FUNC8 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct tape_device*) ; 
 scalar_t__ tapechar_major ; 

__attribute__((used)) static int
FUNC10 (struct inode *inode, struct file *filp)
{
	struct tape_device *device;
	int minor, rc;

	FUNC0(6, "TCHAR:open: %i:%i\n",
		FUNC4(FUNC3(filp)),
		FUNC5(FUNC3(filp)));

	if (FUNC4(FUNC3(filp)) != tapechar_major)
		return -ENODEV;

	minor = FUNC5(FUNC3(filp));
	device = FUNC7(minor / TAPE_MINORS_PER_DEV);
	if (FUNC1(device)) {
		FUNC0(3, "TCHAR:open: tape_find_device() failed\n");
		return FUNC2(device);
	}

	rc = FUNC8(device);
	if (rc == 0) {
		filp->private_data = device;
		FUNC6(inode, filp);
	} else
		FUNC9(device);

	return rc;
}