
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;


 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 int SCSI_LUN (struct scsi_cmnd*) ;
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
 int set_sense_type (struct rtsx_chip*,int ,int ) ;
 int spi_erase_eeprom_byte (struct rtsx_chip*,unsigned short) ;
 int spi_erase_eeprom_chip (struct rtsx_chip*) ;
 int wait_timeout (int) ;

__attribute__((used)) static int erase_eeprom2(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 unsigned short addr;
 int retval;
 u8 mode;

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 retval = rtsx_force_power_on(chip, SSC_PDCTL);
 if (retval != STATUS_SUCCESS) {
  set_sense_type(chip, SCSI_LUN(srb), SENSE_TYPE_MEDIA_WRITE_ERR);
  return TRANSPORT_FAILED;
 }

 mode = srb->cmnd[3];
 addr = ((u16)srb->cmnd[4] << 8) | srb->cmnd[5];

 if (mode == 0) {
  retval = spi_erase_eeprom_chip(chip);
  if (retval != STATUS_SUCCESS) {
   set_sense_type(chip, SCSI_LUN(srb),
           SENSE_TYPE_MEDIA_WRITE_ERR);
   return TRANSPORT_FAILED;
  }
 } else if (mode == 1) {
  retval = spi_erase_eeprom_byte(chip, addr);
  if (retval != STATUS_SUCCESS) {
   set_sense_type(chip, SCSI_LUN(srb),
           SENSE_TYPE_MEDIA_WRITE_ERR);
   return TRANSPORT_FAILED;
  }
 } else {
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return TRANSPORT_GOOD;
}
