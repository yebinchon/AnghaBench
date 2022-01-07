
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xd_info {int xd_clock; } ;
struct sd_info {int sd_clock; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int ms_clock; } ;
struct rtsx_chip {int blink_led; scalar_t__ ss_en; struct ms_info ms_card; struct sd_info sd_card; struct xd_info xd_card; } ;


 int LED_GPIO ;

 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;

 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SENSE_TYPE_MEDIA_WRITE_ERR ;
 int SSC_PDCTL ;
 int STATUS_SUCCESS ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;

 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 int rtsx_force_power_on (struct rtsx_chip*,int ) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int turn_off_led (struct rtsx_chip*,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int set_variable(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned int lun = SCSI_LUN(srb);

 if (srb->cmnd[3] == 1) {

  struct xd_info *xd_card = &chip->xd_card;
  struct sd_info *sd_card = &chip->sd_card;
  struct ms_info *ms_card = &chip->ms_card;

  switch (srb->cmnd[4]) {
  case 128:
   xd_card->xd_clock = srb->cmnd[5];
   break;

  case 129:
   sd_card->sd_clock = srb->cmnd[5];
   break;

  case 130:
   ms_card->ms_clock = srb->cmnd[5];
   break;

  default:
   set_sense_type(chip, lun,
           SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
   return TRANSPORT_FAILED;
  }
 } else if (srb->cmnd[3] == 2) {
  if (srb->cmnd[4]) {
   chip->blink_led = 1;
  } else {
   int retval;

   chip->blink_led = 0;

   rtsx_disable_aspm(chip);

   if (chip->ss_en &&
       (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
    rtsx_exit_ss(chip);
    wait_timeout(100);
   }
   rtsx_set_stat(chip, RTSX_STAT_RUN);

   retval = rtsx_force_power_on(chip, SSC_PDCTL);
   if (retval != STATUS_SUCCESS) {
    set_sense_type(chip, SCSI_LUN(srb),
            SENSE_TYPE_MEDIA_WRITE_ERR);
    return TRANSPORT_FAILED;
   }

   turn_off_led(chip, LED_GPIO);
  }
 } else {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return TRANSPORT_GOOD;
}
