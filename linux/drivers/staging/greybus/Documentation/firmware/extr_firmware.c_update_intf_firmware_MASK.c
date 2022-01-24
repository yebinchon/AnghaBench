#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* firmware_tag; int major; int minor; } ;
struct TYPE_3__ {scalar_t__ status; int major; int minor; int /*<<< orphan*/  firmware_tag; int /*<<< orphan*/  load_method; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_MGMT_IOC_GET_INTF_FW ; 
 int /*<<< orphan*/  FW_MGMT_IOC_INTF_LOAD_AND_VALIDATE ; 
 int /*<<< orphan*/  FW_MGMT_IOC_MODE_SWITCH ; 
 int /*<<< orphan*/  GB_FIRMWARE_U_TAG_MAX_SIZE ; 
 int /*<<< orphan*/  GB_FW_U_LOAD_METHOD_UNIPRO ; 
 scalar_t__ GB_FW_U_LOAD_STATUS_UNVALIDATED ; 
 scalar_t__ GB_FW_U_LOAD_STATUS_VALIDATED ; 
 char* firmware_tag ; 
 char* fwdev ; 
 TYPE_2__ intf_fw_info ; 
 TYPE_1__ intf_load ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int fd)
{
	int ret;

	/* Get Interface Firmware Version */
	FUNC1("Get Interface Firmware Version\n");

	ret = FUNC0(fd, FW_MGMT_IOC_GET_INTF_FW, &intf_fw_info);
	if (ret < 0) {
		FUNC1("Failed to get interface firmware version: %s (%d)\n",
			fwdev, ret);
		return -1;
	}

	FUNC1("Interface Firmware tag (%s), major (%d), minor (%d)\n",
		intf_fw_info.firmware_tag, intf_fw_info.major,
		intf_fw_info.minor);

	/* Try Interface Firmware load over Unipro */
	FUNC1("Loading Interface Firmware\n");

	intf_load.load_method = GB_FW_U_LOAD_METHOD_UNIPRO;
	intf_load.status = 0;
	intf_load.major = 0;
	intf_load.minor = 0;

	FUNC2((char *)&intf_load.firmware_tag, firmware_tag,
		GB_FIRMWARE_U_TAG_MAX_SIZE);

	ret = FUNC0(fd, FW_MGMT_IOC_INTF_LOAD_AND_VALIDATE, &intf_load);
	if (ret < 0) {
		FUNC1("Failed to load interface firmware: %s (%d)\n", fwdev,
			ret);
		return -1;
	}

	if (intf_load.status != GB_FW_U_LOAD_STATUS_VALIDATED &&
	    intf_load.status != GB_FW_U_LOAD_STATUS_UNVALIDATED) {
		FUNC1("Load status says loading failed: %d\n",
			intf_load.status);
		return -1;
	}

	FUNC1("Interface Firmware (%s) Load done: major: %d, minor: %d, status: %d\n",
		firmware_tag, intf_load.major, intf_load.minor,
		intf_load.status);

	/* Initiate Mode-switch to the newly loaded firmware */
	FUNC1("Initiate Mode switch\n");

	ret = FUNC0(fd, FW_MGMT_IOC_MODE_SWITCH);
	if (ret < 0)
		FUNC1("Failed to initiate mode-switch (%d)\n", ret);

	return ret;
}