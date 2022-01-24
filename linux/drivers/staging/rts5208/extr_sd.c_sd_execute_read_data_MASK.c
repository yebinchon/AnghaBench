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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sd_info {int pre_cmd_err; int last_rsp_type; int sd_lock_status; int sd_addr; int /*<<< orphan*/  rsp; int /*<<< orphan*/  sd_pass_thru_en; } ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int card_ready; struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 scalar_t__ FUNC2 (struct sd_info*) ; 
 int /*<<< orphan*/  DMA_512 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_H ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_L ; 
 int /*<<< orphan*/  REG_SD_BYTE_CNT_H ; 
 int /*<<< orphan*/  REG_SD_BYTE_CNT_L ; 
 int /*<<< orphan*/  REG_SD_CFG1 ; 
 int /*<<< orphan*/  REG_SD_CFG2 ; 
 int /*<<< orphan*/  REG_SD_CMD0 ; 
 int /*<<< orphan*/  REG_SD_CMD1 ; 
 int /*<<< orphan*/  REG_SD_CMD2 ; 
 int /*<<< orphan*/  REG_SD_CMD3 ; 
 int /*<<< orphan*/  REG_SD_CMD4 ; 
 int /*<<< orphan*/  REG_SD_TRANSFER ; 
 unsigned int FUNC3 (struct scsi_cmnd*) ; 
 int SD_BUS_WIDTH_1 ; 
 int SD_BUS_WIDTH_4 ; 
 int SD_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  SD_BYTE_CNT_H ; 
 int /*<<< orphan*/  SD_BYTE_CNT_L ; 
 int SD_CARD ; 
 int SD_LOCK_1BIT_MODE ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1b ; 
 int SD_TM_AUTO_READ_2 ; 
 int /*<<< orphan*/  SD_TM_NORMAL_READ ; 
 int SD_TRANSFER_END ; 
 int SD_TRANSFER_START ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ; 
 int /*<<< orphan*/  SENSE_TYPE_NO_SENSE ; 
 int /*<<< orphan*/  SET_BLOCKLEN ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  STOP_TRANSMISSION ; 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct scsi_cmnd*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,struct scsi_cmnd*) ; 
 int FUNC19 (struct rtsx_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC22 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC24 (struct scsi_cmnd*) ; 
 int FUNC25 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int,int*,int,int) ; 
 int FUNC26 (struct rtsx_chip*,int) ; 
 int FUNC27 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC28 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 

int FUNC30(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	unsigned int lun = FUNC3(srb);
	int retval, rsp_len, i;
	bool read_err = false, cmd13_checkbit = false;
	u8 cmd_idx, rsp_type, bus_width;
	bool standby = false, send_cmd12 = false, acmd = false;
	u32 data_len;

	if (!sd_card->sd_pass_thru_en) {
		FUNC28(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	if (sd_card->pre_cmd_err) {
		sd_card->pre_cmd_err = 0;
		FUNC28(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

	retval = FUNC27(chip);
	if (retval != STATUS_SUCCESS)
		return TRANSPORT_FAILED;

	cmd_idx = srb->cmnd[2] & 0x3F;
	if (srb->cmnd[1] & 0x04)
		send_cmd12 = true;

	if (srb->cmnd[1] & 0x02)
		standby = true;

	if (srb->cmnd[1] & 0x01)
		acmd = true;

	data_len = ((u32)srb->cmnd[7] << 16) | ((u32)srb->cmnd[8]
						<< 8) | srb->cmnd[9];

	retval = FUNC8(srb, &rsp_type, &rsp_len);
	if (retval != STATUS_SUCCESS) {
		FUNC28(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}
	sd_card->last_rsp_type = rsp_type;

	retval = FUNC27(chip);
	if (retval != STATUS_SUCCESS)
		return TRANSPORT_FAILED;

#ifdef SUPPORT_SD_LOCK
	if ((sd_card->sd_lock_status & SD_LOCK_1BIT_MODE) == 0) {
		if (CHK_MMC_8BIT(sd_card))
			bus_width = SD_BUS_WIDTH_8;
		else if (CHK_SD(sd_card) || CHK_MMC_4BIT(sd_card))
			bus_width = SD_BUS_WIDTH_4;
		else
			bus_width = SD_BUS_WIDTH_1;
	} else {
		bus_width = SD_BUS_WIDTH_4;
	}
	dev_dbg(rtsx_dev(chip), "bus_width = %d\n", bus_width);
#else
	bus_width = SD_BUS_WIDTH_4;
#endif

	if (data_len < 512) {
		retval = FUNC7(chip, SET_BLOCKLEN, data_len,
						 SD_RSP_TYPE_R1, NULL, 0,
						 false);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if (standby) {
		retval = FUNC26(chip, 0);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if (acmd) {
		retval = FUNC7(chip, APP_CMD,
						 sd_card->sd_addr,
						 SD_RSP_TYPE_R1, NULL, 0,
						 false);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if (data_len <= 512) {
		int min_len;
		u8 *buf;
		u16 byte_cnt, blk_cnt;
		u8 cmd[5];

		byte_cnt = ((u16)(srb->cmnd[8] & 0x03) << 8) | srb->cmnd[9];
		blk_cnt = 1;

		cmd[0] = 0x40 | cmd_idx;
		cmd[1] = srb->cmnd[3];
		cmd[2] = srb->cmnd[4];
		cmd[3] = srb->cmnd[5];
		cmd[4] = srb->cmnd[6];

		buf = FUNC10(data_len, GFP_KERNEL);
		if (!buf)
			return TRANSPORT_ERROR;

		retval = FUNC25(chip, SD_TM_NORMAL_READ, cmd, 5, byte_cnt,
				      blk_cnt, bus_width, buf, data_len, 2000);
		if (retval != STATUS_SUCCESS) {
			read_err = true;
			FUNC9(buf);
			FUNC14(chip);
			goto sd_execute_read_cmd_failed;
		}

		min_len = FUNC11(data_len, FUNC21(srb));
		FUNC18(buf, min_len, srb);

		FUNC9(buf);
	} else if (!(data_len & 0x1FF)) {
		FUNC16(chip);

		FUNC29(DMA_FROM_DEVICE, chip, data_len, DMA_512);

		FUNC13(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_H, 0xFF,
			     0x02);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_L, 0xFF,
			     0x00);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_H,
			     0xFF, (srb->cmnd[7] & 0xFE) >> 1);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_L,
			     0xFF, (u8)((data_len & 0x0001FE00) >> 9));

		FUNC13(chip, WRITE_REG_CMD, REG_SD_CMD0, 0xFF,
			     0x40 | cmd_idx);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_CMD1, 0xFF,
			     srb->cmnd[3]);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_CMD2, 0xFF,
			     srb->cmnd[4]);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_CMD3, 0xFF,
			     srb->cmnd[5]);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_CMD4, 0xFF,
			     srb->cmnd[6]);

		FUNC13(chip, WRITE_REG_CMD, REG_SD_CFG1, 0x03, bus_width);
		FUNC13(chip, WRITE_REG_CMD, REG_SD_CFG2, 0xFF, rsp_type);

		FUNC13(chip, WRITE_REG_CMD, REG_SD_TRANSFER,
			     0xFF, SD_TM_AUTO_READ_2 | SD_TRANSFER_START);
		FUNC13(chip, CHECK_REG_CMD, REG_SD_TRANSFER,
			     SD_TRANSFER_END, SD_TRANSFER_END);

		FUNC17(chip);

		retval = FUNC19(chip, SD_CARD, FUNC24(srb),
					    FUNC21(srb),
					    FUNC23(srb),
					    DMA_FROM_DEVICE, 10000);
		if (retval < 0) {
			read_err = true;
			FUNC14(chip);
			goto sd_execute_read_cmd_failed;
		}

	} else {
		goto sd_execute_read_cmd_failed;
	}

	retval = FUNC6(chip, rsp_len, sd_card->rsp, rsp_type);
	if (retval != STATUS_SUCCESS)
		goto sd_execute_read_cmd_failed;

	if (standby) {
		retval = FUNC26(chip, 1);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if (send_cmd12) {
		retval = FUNC7(chip, STOP_TRANSMISSION, 0,
						 SD_RSP_TYPE_R1b, NULL, 0,
						 false);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if (data_len < 512) {
		retval = FUNC7(chip, SET_BLOCKLEN, 0x200,
						 SD_RSP_TYPE_R1, NULL, 0,
						 false);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;

		retval = FUNC20(chip, SD_BYTE_CNT_H, 0xFF, 0x02);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;

		retval = FUNC20(chip, SD_BYTE_CNT_L, 0xFF, 0x00);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_read_cmd_failed;
	}

	if ((srb->cmnd[1] & 0x02) || (srb->cmnd[1] & 0x04))
		cmd13_checkbit = true;

	for (i = 0; i < 3; i++) {
		retval = FUNC7(chip, SEND_STATUS,
						 sd_card->sd_addr,
						SD_RSP_TYPE_R1, NULL, 0,
						cmd13_checkbit);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (retval != STATUS_SUCCESS)
		goto sd_execute_read_cmd_failed;

	FUNC22(srb, 0);
	return TRANSPORT_GOOD;

sd_execute_read_cmd_failed:
	sd_card->pre_cmd_err = 1;
	FUNC28(chip, lun, SENSE_TYPE_NO_SENSE);
	if (read_err)
		FUNC28(chip, lun, SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);

	FUNC12(chip);
	FUNC5(chip);
	if (!(chip->card_ready & SD_CARD))
		FUNC28(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);

	return TRANSPORT_FAILED;
}