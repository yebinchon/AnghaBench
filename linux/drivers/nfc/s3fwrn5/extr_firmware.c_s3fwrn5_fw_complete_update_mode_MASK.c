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
struct sk_buff {scalar_t__ data; } ;
struct s3fwrn5_fw_info {int dummy; } ;
struct s3fwrn5_fw_header {scalar_t__ code; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE ; 
 int /*<<< orphan*/  S3FWRN5_FW_MSG_CMD ; 
 scalar_t__ S3FWRN5_FW_RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct s3fwrn5_fw_info*,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct s3fwrn5_fw_info*,struct sk_buff*,struct sk_buff**) ; 

__attribute__((used)) static int FUNC3(struct s3fwrn5_fw_info *fw_info)
{
	struct sk_buff *msg, *rsp = NULL;
	struct s3fwrn5_fw_header *hdr;
	int ret;

	/* Send COMPLETE_UPDATE_MODE command */

	ret = FUNC1(fw_info, &msg, S3FWRN5_FW_MSG_CMD,
		S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE, NULL, 0);
	if (ret < 0)
		return ret;

	ret = FUNC2(fw_info, msg, &rsp);
	FUNC0(msg);
	if (ret < 0)
		return ret;

	hdr = (struct s3fwrn5_fw_header *) rsp->data;
	if (hdr->code != S3FWRN5_FW_RET_SUCCESS)
		ret = -EPROTO;

	FUNC0(rsp);

	return ret;
}