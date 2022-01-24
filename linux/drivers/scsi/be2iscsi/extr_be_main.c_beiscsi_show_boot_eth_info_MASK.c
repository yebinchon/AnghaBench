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
struct beiscsi_hba {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BEISCSI_SYSFS_ISCSI_BOOT_FLAGS ; 
 int EPERM ; 
#define  ISCSI_BOOT_ETH_FLAGS 130 
#define  ISCSI_BOOT_ETH_INDEX 129 
#define  ISCSI_BOOT_ETH_MAC 128 
 int FUNC0 (char*,struct beiscsi_hba*) ; 
 int FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(void *data, int type, char *buf)
{
	struct beiscsi_hba *phba = data;
	char *str = buf;
	int rc = -EPERM;

	switch (type) {
	case ISCSI_BOOT_ETH_FLAGS:
		rc = FUNC1(str, "%d\n", BEISCSI_SYSFS_ISCSI_BOOT_FLAGS);
		break;
	case ISCSI_BOOT_ETH_INDEX:
		rc = FUNC1(str, "0\n");
		break;
	case ISCSI_BOOT_ETH_MAC:
		rc  = FUNC0(str, phba);
		break;
	}
	return rc;
}