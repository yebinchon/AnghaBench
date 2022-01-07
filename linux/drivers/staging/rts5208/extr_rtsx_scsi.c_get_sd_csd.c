
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int raw_csd; } ;
struct scsi_cmnd {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 unsigned int SCSI_LUN (struct scsi_cmnd*) ;
 scalar_t__ SD_CARD ;
 int SENSE_TYPE_MEDIA_NOT_PRESENT ;
 int SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int check_card_ready (struct rtsx_chip*,unsigned int) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int rtsx_stor_set_xfer_buf (int ,int ,struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;

__attribute__((used)) static int get_sd_csd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 unsigned int lun = SCSI_LUN(srb);

 if (!check_card_ready(chip, lun)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
  return TRANSPORT_FAILED;
 }

 if (get_lun_card(chip, lun) != SD_CARD) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
  return TRANSPORT_FAILED;
 }

 scsi_set_resid(srb, 0);
 rtsx_stor_set_xfer_buf(sd_card->raw_csd, scsi_bufflen(srb), srb);

 return TRANSPORT_GOOD;
}
