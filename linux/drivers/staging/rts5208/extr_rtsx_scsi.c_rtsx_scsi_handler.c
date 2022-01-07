
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd_info {scalar_t__ sd_erase_status; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {scalar_t__ format_status; scalar_t__ progress; } ;
struct rtsx_chip {struct ms_info ms_card; struct sd_info sd_card; } ;





 int CUR_ERR ;
 scalar_t__ FORMAT_IN_PROGRESS ;

 int GET_DEV_STATUS ;




 scalar_t__ MS_CARD ;





 int SCSI_APP_CMD ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;






 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;


 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;




 int allow_medium_removal (struct scsi_cmnd*,struct rtsx_chip*) ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;
 int inquiry (struct scsi_cmnd*,struct rtsx_chip*) ;
 int led_shine (struct scsi_cmnd*,struct rtsx_chip*) ;
 int mg_report_key (struct scsi_cmnd*,struct rtsx_chip*) ;
 int mg_send_key (struct scsi_cmnd*,struct rtsx_chip*) ;
 int mode_sense (struct scsi_cmnd*,struct rtsx_chip*) ;
 int ms_sp_cmnd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_capacity (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_format_capacity (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_write (struct scsi_cmnd*,struct rtsx_chip*) ;
 int request_sense (struct scsi_cmnd*,struct rtsx_chip*) ;
 int sd_extension_cmnd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int set_sense_data (struct rtsx_chip*,unsigned int,int ,int,int ,int,int,int ,int ) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int start_stop_unit (struct scsi_cmnd*,struct rtsx_chip*) ;
 int test_unit_ready (struct scsi_cmnd*,struct rtsx_chip*) ;
 int vendor_cmnd (struct scsi_cmnd*,struct rtsx_chip*) ;

int rtsx_scsi_handler(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{



 struct ms_info *ms_card = &chip->ms_card;
 unsigned int lun = SCSI_LUN(srb);
 int result;
 if ((get_lun_card(chip, lun) == MS_CARD) &&
     (ms_card->format_status == FORMAT_IN_PROGRESS)) {
  if ((srb->cmnd[0] != 140) &&
      (srb->cmnd[0] != 148)) {

   set_sense_data(chip, lun, CUR_ERR, 0x02, 0, 0x04, 0x04,
           0, (u16)(ms_card->progress));
   return TRANSPORT_FAILED;
  }
 }

 switch (srb->cmnd[0]) {
 case 143:
 case 129:
 case 142:
 case 128:
  result = read_write(srb, chip);

  led_shine(srb, chip);

  break;

 case 132:
  result = test_unit_ready(srb, chip);
  break;

 case 148:
  result = inquiry(srb, chip);
  break;

 case 141:
  result = read_capacity(srb, chip);
  break;

 case 133:
  result = start_stop_unit(srb, chip);
  break;

 case 152:
  result = allow_medium_removal(srb, chip);
  break;

 case 140:
  result = request_sense(srb, chip);
  break;

 case 146:
 case 145:
  result = mode_sense(srb, chip);
  break;

 case 0x23:
  result = read_format_capacity(srb, chip);
  break;

 case 131:
  result = vendor_cmnd(srb, chip);
  break;

 case 144:
  result = ms_sp_cmnd(srb, chip);
  break;
 case 149:
 case 147:
 case 130:
  result = TRANSPORT_GOOD;
  break;

 default:
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  result = TRANSPORT_FAILED;
 }

 return result;
}
