
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int mg_entry_num; } ;
struct rtsx_chip {scalar_t__ ss_en; struct ms_info ms_card; } ;


 int CHK_MSPRO (struct ms_info*) ;
 int KC_MG_R_PRO ;



 scalar_t__ MS_CARD ;
 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM ;
 int STATUS_SUCCESS ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int mg_get_ICV (struct scsi_cmnd*,struct rtsx_chip*) ;
 int mg_get_local_EKB (struct scsi_cmnd*,struct rtsx_chip*) ;
 int mg_get_rsp_chg (struct scsi_cmnd*,struct rtsx_chip*) ;
 int ms_cleanup_work (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int mg_report_key(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 unsigned int lun = SCSI_LUN(srb);
 int retval;
 u8 key_format;

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 ms_cleanup_work(chip);

 if (!check_card_ready(chip, lun)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }
 if (get_lun_card(chip, lun) != MS_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
  return TRANSPORT_FAILED;
 }

 if (srb->cmnd[7] != KC_MG_R_PRO) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 if (!CHK_MSPRO(ms_card)) {
  set_sense_type(chip, lun, SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM);
  return TRANSPORT_FAILED;
 }

 key_format = srb->cmnd[10] & 0x3F;
 dev_dbg(rtsx_dev(chip), "key_format = 0x%x\n", key_format);

 switch (key_format) {
 case 129:
  if ((scsi_bufflen(srb) == 0x41C) &&
      (srb->cmnd[8] == 0x04) &&
      (srb->cmnd[9] == 0x1C)) {
   retval = mg_get_local_EKB(srb, chip);
   if (retval != STATUS_SUCCESS)
    return TRANSPORT_FAILED;

  } else {
   set_sense_type(chip, lun,
           SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
   return TRANSPORT_FAILED;
  }
  break;

 case 128:
  if ((scsi_bufflen(srb) == 0x24) &&
      (srb->cmnd[8] == 0x00) &&
      (srb->cmnd[9] == 0x24)) {
   retval = mg_get_rsp_chg(srb, chip);
   if (retval != STATUS_SUCCESS)
    return TRANSPORT_FAILED;

  } else {
   set_sense_type(chip, lun,
           SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
   return TRANSPORT_FAILED;
  }
  break;

 case 130:
  ms_card->mg_entry_num = srb->cmnd[5];
  if ((scsi_bufflen(srb) == 0x404) &&
      (srb->cmnd[8] == 0x04) &&
      (srb->cmnd[9] == 0x04) &&
      (srb->cmnd[2] == 0x00) &&
      (srb->cmnd[3] == 0x00) &&
      (srb->cmnd[4] == 0x00) &&
      (srb->cmnd[5] < 32)) {
   retval = mg_get_ICV(srb, chip);
   if (retval != STATUS_SUCCESS)
    return TRANSPORT_FAILED;

  } else {
   set_sense_type(chip, lun,
           SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
   return TRANSPORT_FAILED;
  }
  break;

 default:
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 scsi_set_resid(srb, 0);
 return TRANSPORT_GOOD;
}
