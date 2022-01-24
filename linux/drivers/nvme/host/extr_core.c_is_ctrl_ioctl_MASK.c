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

/* Variables and functions */
 unsigned int NVME_IOCTL_ADMIN64_CMD ; 
 unsigned int NVME_IOCTL_ADMIN_CMD ; 
 scalar_t__ FUNC0 (unsigned int) ; 

__attribute__((used)) static bool FUNC1(unsigned int cmd)
{
	if (cmd == NVME_IOCTL_ADMIN_CMD || cmd == NVME_IOCTL_ADMIN64_CMD)
		return true;
	if (FUNC0(cmd))
		return true;
	return false;
}