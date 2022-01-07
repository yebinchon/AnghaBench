
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int dummy; } ;
struct rtsx_chip {int card_ready; int card_wp; scalar_t__ ss_en; struct ms_info ms_card; } ;


 int CHK_MSPRO (struct ms_info*) ;
 int MS_CARD ;
 int MS_SHORT_DATA_LEN ;
 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_FORMAT_CMD_FAILED ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MEDIA_WRITE_PROTECT ;
 int STATUS_SUCCESS ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 scalar_t__ get_card_size (struct rtsx_chip*,unsigned int) ;
 int get_lun_card (struct rtsx_chip*,unsigned int) ;
 int mspro_format (struct scsi_cmnd*,struct rtsx_chip*,int ,int) ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int ms_format_cmnd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 unsigned int lun = SCSI_LUN(srb);
 bool quick_format;
 int retval;

 if (get_lun_card(chip, lun) != MS_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
  return TRANSPORT_FAILED;
 }

 if ((srb->cmnd[3] != 0x4D) || (srb->cmnd[4] != 0x47) ||
     (srb->cmnd[5] != 0x66) || (srb->cmnd[6] != 0x6D) ||
  (srb->cmnd[7] != 0x74)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);

  if (!check_card_ready(chip, lun) ||
      (get_card_size(chip, lun) == 0)) {
   set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
   return TRANSPORT_FAILED;
  }
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 if (srb->cmnd[8] & 0x01)
  quick_format = 0;
 else
  quick_format = 1;

 if (!(chip->card_ready & MS_CARD)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }

 if (chip->card_wp & MS_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_WRITE_PROTECT);
  return TRANSPORT_FAILED;
 }

 if (!CHK_MSPRO(ms_card)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
  return TRANSPORT_FAILED;
 }

 retval = mspro_format(srb, chip, MS_SHORT_DATA_LEN, quick_format);
 if (retval != STATUS_SUCCESS) {
  set_sense_type(chip, lun, SENSE_TYPE_FORMAT_CMD_FAILED);
  return TRANSPORT_FAILED;
 }

 scsi_set_resid(srb, 0);
 return TRANSPORT_GOOD;
}
