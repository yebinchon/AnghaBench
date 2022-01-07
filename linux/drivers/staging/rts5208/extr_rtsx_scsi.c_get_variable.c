
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xd_info {int xd_clock; } ;
struct sd_info {int sd_clock; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int ms_clock; } ;
struct rtsx_chip {int blink_led; struct ms_info ms_card; struct sd_info sd_card; struct xd_info xd_card; } ;



 unsigned int SCSI_LUN (struct scsi_cmnd*) ;

 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;

 int rtsx_stor_set_xfer_buf (int *,int,struct scsi_cmnd*) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;

__attribute__((used)) static int get_variable(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned int lun = SCSI_LUN(srb);

 if (srb->cmnd[3] == 1) {
  struct xd_info *xd_card = &chip->xd_card;
  struct sd_info *sd_card = &chip->sd_card;
  struct ms_info *ms_card = &chip->ms_card;
  u8 tmp;

  switch (srb->cmnd[4]) {
  case 128:
   tmp = (u8)(xd_card->xd_clock);
   break;

  case 129:
   tmp = (u8)(sd_card->sd_clock);
   break;

  case 130:
   tmp = (u8)(ms_card->ms_clock);
   break;

  default:
   set_sense_type(chip, lun,
           SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
   return TRANSPORT_FAILED;
  }

  rtsx_stor_set_xfer_buf(&tmp, 1, srb);
 } else if (srb->cmnd[3] == 2) {
  u8 tmp = chip->blink_led;

  rtsx_stor_set_xfer_buf(&tmp, 1, srb);
 } else {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return TRANSPORT_GOOD;
}
