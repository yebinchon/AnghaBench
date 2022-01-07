
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int sd_lock_status; scalar_t__ sd_lock_notify; } ;
struct scsi_cmnd {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; int lun_mc; } ;


 int CHK_BIT (int ,unsigned int) ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 scalar_t__ SD_CARD ;
 int SD_LOCKED ;
 int SENSE_TYPE_MEDIA_CHANGE ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MEDIA_READ_FORBIDDEN ;
 int SET_BIT (int ,unsigned int) ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;

__attribute__((used)) static int test_unit_ready(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned int lun = SCSI_LUN(srb);

 if (!check_card_ready(chip, lun)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }

 if (!(CHK_BIT(chip->lun_mc, lun))) {
  SET_BIT(chip->lun_mc, lun);
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
  return TRANSPORT_FAILED;
 }
 return TRANSPORT_GOOD;
}
