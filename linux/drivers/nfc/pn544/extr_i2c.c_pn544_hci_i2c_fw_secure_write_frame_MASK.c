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
struct pn544_i2c_phy {scalar_t__ fw_blob_data; scalar_t__ fw_written; int fw_blob_size; int /*<<< orphan*/  fw_work; scalar_t__ fw_cmd_result; int /*<<< orphan*/  fw_work_state; int /*<<< orphan*/  i2c_dev; } ;
struct pn544_i2c_fw_secure_frame {scalar_t__ cmd; int /*<<< orphan*/  be_datalen; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FW_WORK_STATE_WAIT_SECURE_WRITE_ANSWER ; 
 scalar_t__ PN544_FW_CMD_RESET ; 
 scalar_t__ PN544_FW_CMD_SECURE_WRITE ; 
 int PN544_FW_I2C_MAX_PAYLOAD ; 
 int /*<<< orphan*/  PN544_FW_MODE ; 
 int PN544_FW_SECURE_FRAME_HEADER_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pn544_i2c_phy*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pn544_i2c_phy*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pn544_i2c_phy *phy)
{
	struct pn544_i2c_fw_secure_frame *framep;
	int r;

	framep = (struct pn544_i2c_fw_secure_frame *) phy->fw_blob_data;
	if (phy->fw_written == 0)
		phy->fw_blob_size = FUNC0(&framep->be_datalen)
				+ PN544_FW_SECURE_FRAME_HEADER_LEN;

	/* Only secure write command can be chunked*/
	if (phy->fw_blob_size > PN544_FW_I2C_MAX_PAYLOAD &&
			framep->cmd != PN544_FW_CMD_SECURE_WRITE)
		return -EINVAL;

	/* The firmware also have other commands, we just send them directly */
	if (phy->fw_blob_size < PN544_FW_I2C_MAX_PAYLOAD) {
		r = FUNC1(phy->i2c_dev,
			(const char *) phy->fw_blob_data, phy->fw_blob_size);

		if (r == phy->fw_blob_size)
			goto exit;
		else if (r < 0)
			return r;
		else
			return -EIO;
	}

	r = FUNC3(phy,
				       phy->fw_blob_data + phy->fw_written,
				       phy->fw_blob_size - phy->fw_written);
	if (r < 0)
		return r;

exit:
	phy->fw_written += r;
	phy->fw_work_state = FW_WORK_STATE_WAIT_SECURE_WRITE_ANSWER;

	/* SW reset command will not trig any response from PN544 */
	if (framep->cmd == PN544_FW_CMD_RESET) {
		FUNC2(phy, PN544_FW_MODE);
		phy->fw_cmd_result = 0;
		FUNC4(&phy->fw_work);
	}

	return 0;
}