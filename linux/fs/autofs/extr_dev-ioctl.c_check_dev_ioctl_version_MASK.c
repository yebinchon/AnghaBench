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
struct autofs_dev_ioctl {scalar_t__ ver_major; scalar_t__ ver_minor; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_DEV_IOCTL_VERSION_MAJOR ; 
 scalar_t__ AUTOFS_DEV_IOCTL_VERSION_MINOR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(int cmd, struct autofs_dev_ioctl *param)
{
	int err = 0;

	if ((param->ver_major != AUTOFS_DEV_IOCTL_VERSION_MAJOR) ||
	    (param->ver_minor > AUTOFS_DEV_IOCTL_VERSION_MINOR)) {
		FUNC0("ioctl control interface version mismatch: "
			"kernel(%u.%u), user(%u.%u), cmd(0x%08x)\n",
			AUTOFS_DEV_IOCTL_VERSION_MAJOR,
			AUTOFS_DEV_IOCTL_VERSION_MINOR,
			param->ver_major, param->ver_minor, cmd);
		err = -EINVAL;
	}

	/* Fill in the kernel version. */
	param->ver_major = AUTOFS_DEV_IOCTL_VERSION_MAJOR;
	param->ver_minor = AUTOFS_DEV_IOCTL_VERSION_MINOR;

	return err;
}