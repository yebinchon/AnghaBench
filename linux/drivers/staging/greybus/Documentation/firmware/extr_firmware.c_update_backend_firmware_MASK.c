#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* firmware_tag; int major; int minor; int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_MGMT_IOC_GET_BACKEND_FW ; 
 int /*<<< orphan*/  FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE ; 
 int /*<<< orphan*/  GB_FIRMWARE_U_TAG_MAX_SIZE ; 
 int GB_FW_U_BACKEND_FW_STATUS_RETRY ; 
 int GB_FW_U_BACKEND_FW_STATUS_SUCCESS ; 
 int GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE ; 
 int GB_FW_U_BACKEND_VERSION_STATUS_RETRY ; 
 int GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS ; 
 TYPE_1__ backend_fw_info ; 
 TYPE_1__ backend_update ; 
 char* firmware_tag ; 
 char* fwdev ; 
 int FUNC0 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int fd)
{
	int ret;

	/* Get Backend Firmware Version */
	FUNC1("Getting Backend Firmware Version\n");

	FUNC2((char *)&backend_fw_info.firmware_tag, firmware_tag,
		GB_FIRMWARE_U_TAG_MAX_SIZE);

retry_fw_version:
	ret = FUNC0(fd, FW_MGMT_IOC_GET_BACKEND_FW, &backend_fw_info);
	if (ret < 0) {
		FUNC1("Failed to get backend firmware version: %s (%d)\n",
			fwdev, ret);
		return -1;
	}

	FUNC1("Backend Firmware tag (%s), major (%d), minor (%d), status (%d)\n",
		backend_fw_info.firmware_tag, backend_fw_info.major,
		backend_fw_info.minor, backend_fw_info.status);

	if (backend_fw_info.status == GB_FW_U_BACKEND_VERSION_STATUS_RETRY)
		goto retry_fw_version;

	if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS)
	    && (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {
		FUNC1("Failed to get backend firmware version: %s (%d)\n",
			fwdev, backend_fw_info.status);
		return -1;
	}

	/* Try Backend Firmware Update over Unipro */
	FUNC1("Updating Backend Firmware\n");

	FUNC2((char *)&backend_update.firmware_tag, firmware_tag,
		GB_FIRMWARE_U_TAG_MAX_SIZE);

retry_fw_update:
	backend_update.status = 0;

	ret = FUNC0(fd, FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE, &backend_update);
	if (ret < 0) {
		FUNC1("Failed to load backend firmware: %s (%d)\n", fwdev, ret);
		return -1;
	}

	if (backend_update.status == GB_FW_U_BACKEND_FW_STATUS_RETRY) {
		FUNC1("Retrying firmware update: %d\n", backend_update.status);
		goto retry_fw_update;
	}

	if (backend_update.status != GB_FW_U_BACKEND_FW_STATUS_SUCCESS) {
		FUNC1("Load status says loading failed: %d\n",
			backend_update.status);
	} else {
		FUNC1("Backend Firmware (%s) Load done: status: %d\n",
				firmware_tag, backend_update.status);
	}

	return 0;
}