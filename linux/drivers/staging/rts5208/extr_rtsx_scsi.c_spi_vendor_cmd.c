
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;


 int CARD_GPIO_DIR ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 unsigned int SCSI_LUN (struct scsi_cmnd*) ;







 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int SSC_PDCTL ;
 int STATUS_SUCCESS ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 int rtsx_force_power_on (struct rtsx_chip*,int ) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int set_sense_type (struct rtsx_chip*,unsigned int,int ) ;
 int spi_erase_flash (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_get_status (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_read_flash (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_read_flash_id (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_set_parameter (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_write_flash (struct scsi_cmnd*,struct rtsx_chip*) ;
 int spi_write_flash_status (struct scsi_cmnd*,struct rtsx_chip*) ;
 int wait_timeout (int) ;

__attribute__((used)) static int spi_vendor_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int result;
 unsigned int lun = SCSI_LUN(srb);
 u8 gpio_dir;

 if (CHECK_PID(chip, 0x5208) || CHECK_PID(chip, 0x5288)) {
  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 rtsx_force_power_on(chip, SSC_PDCTL);

 rtsx_read_register(chip, CARD_GPIO_DIR, &gpio_dir);
 rtsx_write_register(chip, CARD_GPIO_DIR, 0x07, gpio_dir & 0x06);

 switch (srb->cmnd[2]) {
 case 133:
  result = spi_get_status(srb, chip);
  break;

 case 130:
  result = spi_set_parameter(srb, chip);
  break;

 case 132:
  result = spi_read_flash_id(srb, chip);
  break;

 case 131:
  result = spi_read_flash(srb, chip);
  break;

 case 129:
  result = spi_write_flash(srb, chip);
  break;

 case 128:
  result = spi_write_flash_status(srb, chip);
  break;

 case 134:
  result = spi_erase_flash(srb, chip);
  break;

 default:
  rtsx_write_register(chip, CARD_GPIO_DIR, 0x07, gpio_dir);

  set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 rtsx_write_register(chip, CARD_GPIO_DIR, 0x07, gpio_dir);

 if (result != STATUS_SUCCESS)
  return TRANSPORT_FAILED;

 return TRANSPORT_GOOD;
}
