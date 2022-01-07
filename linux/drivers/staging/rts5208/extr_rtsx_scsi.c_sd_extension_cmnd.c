
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;


 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 scalar_t__ SD_CARD ;






 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int TRANSPORT_FAILED ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int sd_cleanup_work (struct rtsx_chip*) ;
 int sd_execute_no_data (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_execute_read_data (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_execute_write_data (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_get_cmd_rsp (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_hw_rst (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_pass_thru_mode (struct scsi_cmnd*,struct rtsx_chip*) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int sd_extension_cmnd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned int lun = SCSI_LUN(srb);
 int result;

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 sd_cleanup_work(chip);

 if (!check_card_ready(chip, lun)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }
 if (get_lun_card(chip, lun) != SD_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
  return TRANSPORT_FAILED;
 }

 switch (srb->cmnd[0]) {
 case 128:
  result = sd_pass_thru_mode(srb, chip);
  break;

 case 133:
  result = sd_execute_no_data(srb, chip);
  break;

 case 132:
  result = sd_execute_read_data(srb, chip);
  break;

 case 131:
  result = sd_execute_write_data(srb, chip);
  break;

 case 130:
  result = sd_get_cmd_rsp(srb, chip);
  break;

 case 129:
  result = sd_hw_rst(srb, chip);
  break;

 default:
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return result;
}
