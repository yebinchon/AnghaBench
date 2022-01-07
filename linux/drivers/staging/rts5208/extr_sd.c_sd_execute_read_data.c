
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sd_info {int pre_cmd_err; int last_rsp_type; int sd_lock_status; int sd_addr; int rsp; int sd_pass_thru_en; } ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int card_ready; struct sd_info sd_card; } ;


 int APP_CMD ;
 int CHECK_REG_CMD ;
 scalar_t__ CHK_MMC_4BIT (struct sd_info*) ;
 scalar_t__ CHK_MMC_8BIT (struct sd_info*) ;
 scalar_t__ CHK_SD (struct sd_info*) ;
 int DMA_512 ;
 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int REG_SD_BLOCK_CNT_H ;
 int REG_SD_BLOCK_CNT_L ;
 int REG_SD_BYTE_CNT_H ;
 int REG_SD_BYTE_CNT_L ;
 int REG_SD_CFG1 ;
 int REG_SD_CFG2 ;
 int REG_SD_CMD0 ;
 int REG_SD_CMD1 ;
 int REG_SD_CMD2 ;
 int REG_SD_CMD3 ;
 int REG_SD_CMD4 ;
 int REG_SD_TRANSFER ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SD_BUS_WIDTH_1 ;
 int SD_BUS_WIDTH_4 ;
 int SD_BUS_WIDTH_8 ;
 int SD_BYTE_CNT_H ;
 int SD_BYTE_CNT_L ;
 int SD_CARD ;
 int SD_LOCK_1BIT_MODE ;
 int SD_RSP_TYPE_R1 ;
 int SD_RSP_TYPE_R1b ;
 int SD_TM_AUTO_READ_2 ;
 int SD_TM_NORMAL_READ ;
 int SD_TRANSFER_END ;
 int SD_TRANSFER_START ;
 int SEND_STATUS ;
 int SENSE_TYPE_MEDIA_CHANGE ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ;
 int SENSE_TYPE_NO_SENSE ;
 int SET_BLOCKLEN ;
 int STATUS_SUCCESS ;
 int STOP_TRANSMISSION ;
 int TRANSPORT_ERROR ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int WRITE_REG_CMD ;
 int dev_dbg (int ,char*,int) ;
 int do_reset_sd_card (struct rtsx_chip*) ;
 int ext_sd_get_rsp (struct rtsx_chip*,int,int ,int) ;
 int ext_sd_send_cmd_get_rsp (struct rtsx_chip*,int ,int,int ,int *,int ,int) ;
 int get_rsp_type (struct scsi_cmnd*,int*,int*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int min (int,int ) ;
 int release_sd_card (struct rtsx_chip*) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_clear_sd_error (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd_no_wait (struct rtsx_chip*) ;
 int rtsx_stor_set_xfer_buf (int*,int,struct scsi_cmnd*) ;
 int rtsx_transfer_data (struct rtsx_chip*,int,int ,int ,int ,int ,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sd_read_data (struct rtsx_chip*,int ,int*,int,int,int,int,int*,int,int) ;
 int sd_select_card (struct rtsx_chip*,int) ;
 int sd_switch_clock (struct rtsx_chip*) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int trans_dma_enable (int ,struct rtsx_chip*,int,int ) ;

int sd_execute_read_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 unsigned int lun = SCSI_LUN(srb);
 int retval, rsp_len, i;
 bool read_err = 0, cmd13_checkbit = 0;
 u8 cmd_idx, rsp_type, bus_width;
 bool standby = 0, send_cmd12 = 0, acmd = 0;
 u32 data_len;

 if (!sd_card->sd_pass_thru_en) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 if (sd_card->pre_cmd_err) {
  sd_card->pre_cmd_err = 0;
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
  return TRANSPORT_FAILED;
 }

 retval = sd_switch_clock(chip);
 if (retval != STATUS_SUCCESS)
  return TRANSPORT_FAILED;

 cmd_idx = srb->cmnd[2] & 0x3F;
 if (srb->cmnd[1] & 0x04)
  send_cmd12 = 1;

 if (srb->cmnd[1] & 0x02)
  standby = 1;

 if (srb->cmnd[1] & 0x01)
  acmd = 1;

 data_len = ((u32)srb->cmnd[7] << 16) | ((u32)srb->cmnd[8]
      << 8) | srb->cmnd[9];

 retval = get_rsp_type(srb, &rsp_type, &rsp_len);
 if (retval != STATUS_SUCCESS) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }
 sd_card->last_rsp_type = rsp_type;

 retval = sd_switch_clock(chip);
 if (retval != STATUS_SUCCESS)
  return TRANSPORT_FAILED;
 bus_width = SD_BUS_WIDTH_4;


 if (data_len < 512) {
  retval = ext_sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, data_len,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;
 }

 if (standby) {
  retval = sd_select_card(chip, 0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;
 }

 if (acmd) {
  retval = ext_sd_send_cmd_get_rsp(chip, APP_CMD,
       sd_card->sd_addr,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
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

  buf = kmalloc(data_len, GFP_KERNEL);
  if (!buf)
   return TRANSPORT_ERROR;

  retval = sd_read_data(chip, SD_TM_NORMAL_READ, cmd, 5, byte_cnt,
          blk_cnt, bus_width, buf, data_len, 2000);
  if (retval != STATUS_SUCCESS) {
   read_err = 1;
   kfree(buf);
   rtsx_clear_sd_error(chip);
   goto sd_execute_read_cmd_failed;
  }

  min_len = min(data_len, scsi_bufflen(srb));
  rtsx_stor_set_xfer_buf(buf, min_len, srb);

  kfree(buf);
 } else if (!(data_len & 0x1FF)) {
  rtsx_init_cmd(chip);

  trans_dma_enable(DMA_FROM_DEVICE, chip, data_len, DMA_512);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_H, 0xFF,
        0x02);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_L, 0xFF,
        0x00);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_H,
        0xFF, (srb->cmnd[7] & 0xFE) >> 1);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_L,
        0xFF, (u8)((data_len & 0x0001FE00) >> 9));

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD0, 0xFF,
        0x40 | cmd_idx);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD1, 0xFF,
        srb->cmnd[3]);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD2, 0xFF,
        srb->cmnd[4]);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD3, 0xFF,
        srb->cmnd[5]);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD4, 0xFF,
        srb->cmnd[6]);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CFG1, 0x03, bus_width);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CFG2, 0xFF, rsp_type);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_TRANSFER,
        0xFF, SD_TM_AUTO_READ_2 | SD_TRANSFER_START);
  rtsx_add_cmd(chip, CHECK_REG_CMD, REG_SD_TRANSFER,
        SD_TRANSFER_END, SD_TRANSFER_END);

  rtsx_send_cmd_no_wait(chip);

  retval = rtsx_transfer_data(chip, SD_CARD, scsi_sglist(srb),
         scsi_bufflen(srb),
         scsi_sg_count(srb),
         DMA_FROM_DEVICE, 10000);
  if (retval < 0) {
   read_err = 1;
   rtsx_clear_sd_error(chip);
   goto sd_execute_read_cmd_failed;
  }

 } else {
  goto sd_execute_read_cmd_failed;
 }

 retval = ext_sd_get_rsp(chip, rsp_len, sd_card->rsp, rsp_type);
 if (retval != STATUS_SUCCESS)
  goto sd_execute_read_cmd_failed;

 if (standby) {
  retval = sd_select_card(chip, 1);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;
 }

 if (send_cmd12) {
  retval = ext_sd_send_cmd_get_rsp(chip, STOP_TRANSMISSION, 0,
       SD_RSP_TYPE_R1b, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;
 }

 if (data_len < 512) {
  retval = ext_sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, 0x200,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;

  retval = rtsx_write_register(chip, SD_BYTE_CNT_H, 0xFF, 0x02);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;

  retval = rtsx_write_register(chip, SD_BYTE_CNT_L, 0xFF, 0x00);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_read_cmd_failed;
 }

 if ((srb->cmnd[1] & 0x02) || (srb->cmnd[1] & 0x04))
  cmd13_checkbit = 1;

 for (i = 0; i < 3; i++) {
  retval = ext_sd_send_cmd_get_rsp(chip, SEND_STATUS,
       sd_card->sd_addr,
      SD_RSP_TYPE_R1, ((void*)0), 0,
      cmd13_checkbit);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (retval != STATUS_SUCCESS)
  goto sd_execute_read_cmd_failed;

 scsi_set_resid(srb, 0);
 return TRANSPORT_GOOD;

sd_execute_read_cmd_failed:
 sd_card->pre_cmd_err = 1;
 set_sense_type(chip, lun, SENSE_TYPE_NO_SENSE);
 if (read_err)
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);

 release_sd_card(chip);
 do_reset_sd_card(chip);
 if (!(chip->card_ready & SD_CARD))
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);

 return TRANSPORT_FAILED;
}
