
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sd_info {int pre_cmd_err; int sd_lock_status; int last_rsp_type; int sd_addr; int sd_lock_notify; int sd_erase_status; int * rsp; int sd_pass_thru_en; } ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int card_ready; struct sd_info sd_card; } ;


 int APP_CMD ;
 int CARD_DATA_SOURCE ;
 int CHECK_REG_CMD ;
 scalar_t__ CHK_MMC_4BIT (struct sd_info*) ;
 scalar_t__ CHK_MMC_8BIT (struct sd_info*) ;
 scalar_t__ CHK_SD (struct sd_info*) ;
 int DMA_512 ;
 int DMA_TO_DEVICE ;
 int GFP_KERNEL ;
 int LOCK_UNLOCK ;
 int PINGPONG_BUFFER ;
 int PPBUF_BASE2 ;
 int REG_SD_BLOCK_CNT_H ;
 int REG_SD_BLOCK_CNT_L ;
 int REG_SD_BYTE_CNT_H ;
 int REG_SD_BYTE_CNT_L ;
 int REG_SD_CFG1 ;
 int REG_SD_TRANSFER ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SD_BUS_WIDTH_4 ;
 int SD_BUS_WIDTH_8 ;
 int SD_BYTE_CNT_H ;
 int SD_BYTE_CNT_L ;
 int SD_CARD ;
 int SD_CLR_PWD ;
 int SD_ERASE ;
 int SD_LOCKED ;
 int SD_LOCK_1BIT_MODE ;
 int SD_PWD_EXIST ;
 int SD_RSP_TYPE_R1 ;
 int SD_RSP_TYPE_R1b ;
 int SD_SDR_RST ;
 int SD_SET_PWD ;
 int SD_TM_AUTO_WRITE_3 ;
 int SD_TRANSFER_END ;
 int SD_TRANSFER_START ;
 int SD_UNDER_ERASING ;
 int SD_UNLOCK_POW_ON ;
 int SEND_STATUS ;
 int SENSE_TYPE_MEDIA_CHANGE ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MEDIA_WRITE_ERR ;
 int SENSE_TYPE_NO_SENSE ;
 int SET_BLOCKLEN ;
 int STATUS_SUCCESS ;
 int STOP_TRANSMISSION ;
 int TRANSPORT_ERROR ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int WRITE_REG_CMD ;
 int dev_dbg (int ,char*,...) ;
 int do_reset_sd_card (struct rtsx_chip*) ;
 int ext_sd_send_cmd_get_rsp (struct rtsx_chip*,int,int,int,int *,int,int) ;
 int get_rsp_type (struct scsi_cmnd*,int*,int*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int release_sd_card (struct rtsx_chip*) ;
 int reset_sd (struct rtsx_chip*) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int,int,int) ;
 int rtsx_clear_sd_error (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int,int) ;
 int rtsx_send_cmd_no_wait (struct rtsx_chip*) ;
 int rtsx_stor_get_xfer_buf (int*,int,struct scsi_cmnd*) ;
 int rtsx_transfer_data (struct rtsx_chip*,int,int ,int ,int ,int ,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sd_select_card (struct rtsx_chip*,int) ;
 int sd_switch_clock (struct rtsx_chip*) ;
 int sd_update_lock_status (struct rtsx_chip*) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int trans_dma_enable (int ,struct rtsx_chip*,int,int ) ;

int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 unsigned int lun = SCSI_LUN(srb);
 int retval, rsp_len, i;
 bool write_err = 0, cmd13_checkbit = 0;
 u8 cmd_idx, rsp_type;
 bool standby = 0, send_cmd12 = 0, acmd = 0;
 u32 data_len, arg;






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
 arg = ((u32)srb->cmnd[3] << 24) | ((u32)srb->cmnd[4] << 16) |
  ((u32)srb->cmnd[5] << 8) | srb->cmnd[6];
 retval = get_rsp_type(srb, &rsp_type, &rsp_len);
 if (retval != STATUS_SUCCESS) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }
 sd_card->last_rsp_type = rsp_type;

 retval = sd_switch_clock(chip);
 if (retval != STATUS_SUCCESS)
  return TRANSPORT_FAILED;
 retval = rtsx_write_register(chip, REG_SD_CFG1, 0x03, SD_BUS_WIDTH_4);
 if (retval != STATUS_SUCCESS)
  return TRANSPORT_FAILED;


 if (data_len < 512) {
  retval = ext_sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, data_len,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
 }

 if (standby) {
  retval = sd_select_card(chip, 0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
 }

 if (acmd) {
  retval = ext_sd_send_cmd_get_rsp(chip, APP_CMD,
       sd_card->sd_addr,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
 }

 retval = ext_sd_send_cmd_get_rsp(chip, cmd_idx, arg, rsp_type,
      sd_card->rsp, rsp_len, 0);
 if (retval != STATUS_SUCCESS)
  goto sd_execute_write_cmd_failed;

 if (data_len <= 512) {
  u16 i;
  u8 *buf;

  buf = kmalloc(data_len, GFP_KERNEL);
  if (!buf)
   return TRANSPORT_ERROR;

  rtsx_stor_get_xfer_buf(buf, data_len, srb);






  if (data_len > 256) {
   rtsx_init_cmd(chip);
   for (i = 0; i < 256; i++) {
    rtsx_add_cmd(chip, WRITE_REG_CMD,
          PPBUF_BASE2 + i, 0xFF, buf[i]);
   }
   retval = rtsx_send_cmd(chip, 0, 250);
   if (retval != STATUS_SUCCESS) {
    kfree(buf);
    goto sd_execute_write_cmd_failed;
   }

   rtsx_init_cmd(chip);
   for (i = 256; i < data_len; i++) {
    rtsx_add_cmd(chip, WRITE_REG_CMD,
          PPBUF_BASE2 + i, 0xFF, buf[i]);
   }
   retval = rtsx_send_cmd(chip, 0, 250);
   if (retval != STATUS_SUCCESS) {
    kfree(buf);
    goto sd_execute_write_cmd_failed;
   }
  } else {
   rtsx_init_cmd(chip);
   for (i = 0; i < data_len; i++) {
    rtsx_add_cmd(chip, WRITE_REG_CMD,
          PPBUF_BASE2 + i, 0xFF, buf[i]);
   }
   retval = rtsx_send_cmd(chip, 0, 250);
   if (retval != STATUS_SUCCESS) {
    kfree(buf);
    goto sd_execute_write_cmd_failed;
   }
  }

  kfree(buf);

  rtsx_init_cmd(chip);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_H, 0xFF,
        srb->cmnd[8] & 0x03);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_L, 0xFF,
        srb->cmnd[9]);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_H, 0xFF,
        0x00);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_L, 0xFF,
        0x01);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01,
        PINGPONG_BUFFER);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_TRANSFER, 0xFF,
        SD_TM_AUTO_WRITE_3 | SD_TRANSFER_START);
  rtsx_add_cmd(chip, CHECK_REG_CMD, REG_SD_TRANSFER,
        SD_TRANSFER_END, SD_TRANSFER_END);

  retval = rtsx_send_cmd(chip, SD_CARD, 250);
 } else if (!(data_len & 0x1FF)) {
  rtsx_init_cmd(chip);

  trans_dma_enable(DMA_TO_DEVICE, chip, data_len, DMA_512);

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_H, 0xFF,
        0x02);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_L, 0xFF,
        0x00);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_H,
        0xFF, (srb->cmnd[7] & 0xFE) >> 1);
  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_L,
        0xFF, (u8)((data_len & 0x0001FE00) >> 9));

  rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_TRANSFER, 0xFF,
        SD_TM_AUTO_WRITE_3 | SD_TRANSFER_START);
  rtsx_add_cmd(chip, CHECK_REG_CMD, REG_SD_TRANSFER,
        SD_TRANSFER_END, SD_TRANSFER_END);

  rtsx_send_cmd_no_wait(chip);

  retval = rtsx_transfer_data(chip, SD_CARD, scsi_sglist(srb),
         scsi_bufflen(srb),
         scsi_sg_count(srb),
         DMA_TO_DEVICE, 10000);

 } else {
  goto sd_execute_write_cmd_failed;
 }

 if (retval < 0) {
  write_err = 1;
  rtsx_clear_sd_error(chip);
  goto sd_execute_write_cmd_failed;
 }
 if (standby) {
  retval = sd_select_card(chip, 1);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
 }

 if (send_cmd12) {
  retval = ext_sd_send_cmd_get_rsp(chip, STOP_TRANSMISSION, 0,
       SD_RSP_TYPE_R1b, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
 }

 if (data_len < 512) {
  retval = ext_sd_send_cmd_get_rsp(chip, SET_BLOCKLEN, 0x200,
       SD_RSP_TYPE_R1, ((void*)0), 0,
       0);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;

  retval = rtsx_write_register(chip, SD_BYTE_CNT_H, 0xFF, 0x02);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;

  retval = rtsx_write_register(chip, SD_BYTE_CNT_L, 0xFF, 0x00);
  if (retval != STATUS_SUCCESS)
   goto sd_execute_write_cmd_failed;
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
  goto sd_execute_write_cmd_failed;
 scsi_set_resid(srb, 0);
 return TRANSPORT_GOOD;

sd_execute_write_cmd_failed:
 sd_card->pre_cmd_err = 1;
 set_sense_type(chip, lun, SENSE_TYPE_NO_SENSE);
 if (write_err)
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_WRITE_ERR);

 release_sd_card(chip);
 do_reset_sd_card(chip);
 if (!(chip->card_ready & SD_CARD))
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);

 return TRANSPORT_FAILED;
}
