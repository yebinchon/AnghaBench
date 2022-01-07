
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int raw_model_name; int raw_sys_info; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int CHK_MSPRO (struct ms_info*) ;
 scalar_t__ CHK_MSXC (struct ms_info*) ;
 int GFP_KERNEL ;
 scalar_t__ MS_CARD ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int STATUS_SUCCESS ;
 int TRANSPORT_ERROR ;
 int TRANSPORT_FAILED ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;
 int memcpy (int*,int ,int) ;
 int rtsx_stor_set_xfer_buf (int*,unsigned int,struct scsi_cmnd*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;

__attribute__((used)) static int get_ms_information(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 unsigned int lun = SCSI_LUN(srb);
 u8 dev_info_id, data_len;
 u8 *buf;
 unsigned int buf_len;
 int i;

 if (!check_card_ready(chip, lun)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }
 if (get_lun_card(chip, lun) != MS_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
  return TRANSPORT_FAILED;
 }

 if ((srb->cmnd[2] != 0xB0) || (srb->cmnd[4] != 0x4D) ||
     (srb->cmnd[5] != 0x53) || (srb->cmnd[6] != 0x49) ||
     (srb->cmnd[7] != 0x44)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 dev_info_id = srb->cmnd[3];
 if ((CHK_MSXC(ms_card) && (dev_info_id == 0x10)) ||
     (!CHK_MSXC(ms_card) && (dev_info_id == 0x13)) ||
     !CHK_MSPRO(ms_card)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 if (dev_info_id == 0x15) {
  buf_len = 0x3A;
  data_len = 0x3A;
 } else {
  buf_len = 0x6A;
  data_len = 0x6A;
 }

 buf = kmalloc(buf_len, GFP_KERNEL);
 if (!buf)
  return TRANSPORT_ERROR;

 i = 0;

 buf[i++] = 0x00;
 buf[i++] = data_len;

 if (CHK_MSXC(ms_card))
  buf[i++] = 0x03;
 else
  buf[i++] = 0x02;


 buf[i++] = 0x01;

 buf[i++] = 0x00;
 buf[i++] = 0x00;
 buf[i++] = 0x00;

 buf[i++] = 0x01;




 buf[i++] = dev_info_id;

 if (dev_info_id == 0x15)
  data_len = 0x31;
 else
  data_len = 0x61;

 buf[i++] = 0x00;
 buf[i++] = data_len;

 buf[i++] = 0x80;
 if ((dev_info_id == 0x10) || (dev_info_id == 0x13)) {

  memcpy(buf + i, ms_card->raw_sys_info, 96);
 } else {

  memcpy(buf + i, ms_card->raw_model_name, 48);
 }

 rtsx_stor_set_xfer_buf(buf, buf_len, srb);

 if (dev_info_id == 0x15)
  scsi_set_resid(srb, scsi_bufflen(srb) - 0x3C);
 else
  scsi_set_resid(srb, scsi_bufflen(srb) - 0x6C);

 kfree(buf);
 return STATUS_SUCCESS;
}
