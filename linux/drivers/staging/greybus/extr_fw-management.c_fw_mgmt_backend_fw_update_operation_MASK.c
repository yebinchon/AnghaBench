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
struct gb_fw_mgmt_backend_fw_update_request {char* firmware_tag; int request_id; } ;
struct fw_mgmt {int backend_fw_request_id; int /*<<< orphan*/  parent; int /*<<< orphan*/  id_map; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EINVAL ; 
 int GB_FIRMWARE_TAG_MAX_SIZE ; 
 int /*<<< orphan*/  GB_FW_MGMT_TYPE_BACKEND_FW_UPDATE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_fw_mgmt_backend_fw_update_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct fw_mgmt *fw_mgmt,
					       char *tag)
{
	struct gb_fw_mgmt_backend_fw_update_request request;
	int ret;

	FUNC4(request.firmware_tag, tag, GB_FIRMWARE_TAG_MAX_SIZE);

	/*
	 * The firmware-tag should be NULL terminated, otherwise throw error and
	 * fail.
	 */
	if (request.firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE - 1] != '\0') {
		FUNC0(fw_mgmt->parent, "backend-update: firmware-tag is not NULL terminated\n");
		return -EINVAL;
	}

	/* Allocate ids from 1 to 255 (u8-max), 0 is an invalid id */
	ret = FUNC2(&fw_mgmt->id_map, 1, 256, GFP_KERNEL);
	if (ret < 0) {
		FUNC0(fw_mgmt->parent, "failed to allocate request id (%d)\n",
			ret);
		return ret;
	}

	fw_mgmt->backend_fw_request_id = ret;
	request.request_id = ret;

	ret = FUNC1(fw_mgmt->connection,
				GB_FW_MGMT_TYPE_BACKEND_FW_UPDATE, &request,
				sizeof(request), NULL, 0);
	if (ret) {
		FUNC3(&fw_mgmt->id_map,
				  fw_mgmt->backend_fw_request_id);
		fw_mgmt->backend_fw_request_id = 0;
		FUNC0(fw_mgmt->parent,
			"backend %s firmware update request failed (%d)\n", tag,
			ret);
		return ret;
	}

	return 0;
}