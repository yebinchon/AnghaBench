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
 int /*<<< orphan*/  FW_MGMT_IOC_SET_TIMEOUT_MS ; 
 char* FW_TAG_BCND_DEFAULT ; 
 char* FW_TAG_INT_DEFAULT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* firmware_tag ; 
 int fw_timeout ; 
 scalar_t__ fw_update_type ; 
 char* fwdev ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 void* FUNC5 (char*,char**,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char *argv[])
{
	int fd, ret;
	char *endptr;

	if (argc > 1 &&
	    (!FUNC4(argv[1], "-h") || !FUNC4(argv[1], "--help"))) {
		FUNC8();
		return -1;
	}

	if (argc > 1)
		fwdev = argv[1];

	if (argc > 2)
		fw_update_type = FUNC5(argv[2], &endptr, 10);

	if (argc > 3)
		firmware_tag = argv[3];
	else if (!fw_update_type)
		firmware_tag = FW_TAG_INT_DEFAULT;
	else
		firmware_tag = FW_TAG_BCND_DEFAULT;

	if (argc > 4)
		fw_timeout = FUNC5(argv[4], &endptr, 10);

	FUNC3("Trying Firmware update: fwdev: %s, type: %s, tag: %s, timeout: %u\n",
		fwdev, fw_update_type == 0 ? "interface" : "backend",
		firmware_tag, fw_timeout);

	FUNC3("Opening %s firmware management device\n", fwdev);

	fd = FUNC2(fwdev, O_RDWR);
	if (fd < 0) {
		FUNC3("Failed to open: %s\n", fwdev);
		return -1;
	}

	/* Set Timeout */
	FUNC3("Setting timeout to %u ms\n", fw_timeout);

	ret = FUNC1(fd, FW_MGMT_IOC_SET_TIMEOUT_MS, &fw_timeout);
	if (ret < 0) {
		FUNC3("Failed to set timeout: %s (%d)\n", fwdev, ret);
		ret = -1;
		goto close_fd;
	}

	if (!fw_update_type)
		ret = FUNC7(fd);
	else
		ret = FUNC6(fd);

close_fd:
	FUNC0(fd);

	return ret;
}