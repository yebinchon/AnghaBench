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
struct autofs_dev_ioctl {scalar_t__ size; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 unsigned int AUTOFS_DEV_IOCTL_ISMOUNTPOINT_CMD ; 
 unsigned int AUTOFS_DEV_IOCTL_OPENMOUNT_CMD ; 
 unsigned int AUTOFS_DEV_IOCTL_REQUESTER_CMD ; 
 scalar_t__ AUTOFS_DEV_IOCTL_SIZE ; 
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int,struct autofs_dev_ioctl*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(int cmd, struct autofs_dev_ioctl *param)
{
	int err;

	err = FUNC1(cmd, param);
	if (err) {
		FUNC4("invalid device control module version "
			"supplied for cmd(0x%08x)\n", cmd);
		goto out;
	}

	if (param->size > AUTOFS_DEV_IOCTL_SIZE) {
		err = FUNC3(param->path, param->size - AUTOFS_DEV_IOCTL_SIZE);
		if (err) {
			FUNC4(
			  "path string terminator missing for cmd(0x%08x)\n",
			  cmd);
			goto out;
		}

		err = FUNC2(param->path);
		if (err) {
			FUNC4("invalid path supplied for cmd(0x%08x)\n",
				cmd);
			goto out;
		}
	} else {
		unsigned int inr = FUNC0(cmd);

		if (inr == AUTOFS_DEV_IOCTL_OPENMOUNT_CMD ||
		    inr == AUTOFS_DEV_IOCTL_REQUESTER_CMD ||
		    inr == AUTOFS_DEV_IOCTL_ISMOUNTPOINT_CMD) {
			err = -EINVAL;
			goto out;
		}
	}

	err = 0;
out:
	return err;
}