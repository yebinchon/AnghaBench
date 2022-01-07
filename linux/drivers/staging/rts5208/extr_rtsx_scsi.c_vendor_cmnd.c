
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;
 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;


 int TRANSPORT_FAILED ;


 int app_cmd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int get_card_bus_width (struct scsi_cmnd*,struct rtsx_chip*) ;
 int get_sd_csd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_eeprom (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_mem (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_status (struct scsi_cmnd*,struct rtsx_chip*) ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;
 int spi_vendor_cmd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int toggle_gpio_cmd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_eeprom (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_mem (struct scsi_cmnd*,struct rtsx_chip*) ;

__attribute__((used)) static int vendor_cmnd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int result;

 switch (srb->cmnd[1]) {
 case 133:
  result = read_status(srb, chip);
  break;

 case 134:
  result = read_mem(srb, chip);
  break;

 case 128:
  result = write_mem(srb, chip);
  break;

 case 135:
  result = read_eeprom(srb, chip);
  break;

 case 129:
  result = write_eeprom(srb, chip);
  break;

 case 130:
  result = toggle_gpio_cmd(srb, chip);
  break;

 case 136:
  result = get_sd_csd(srb, chip);
  break;

 case 137:
  result = get_card_bus_width(srb, chip);
  break;

 case 132:
  result = app_cmd(srb, chip);
  break;

 case 131:
  result = spi_vendor_cmd(srb, chip);
  break;

 default:
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return result;
}
