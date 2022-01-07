
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;
 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;



 int TRANSPORT_FAILED ;





 int dma_access_ring_buffer (struct scsi_cmnd*,struct rtsx_chip*) ;
 int erase_eeprom2 (struct scsi_cmnd*,struct rtsx_chip*) ;
 int get_dev_status (struct scsi_cmnd*,struct rtsx_chip*) ;
 int get_variable (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_cfg_byte (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_eeprom2 (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_efuse (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_host_reg (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_phy_register (struct scsi_cmnd*,struct rtsx_chip*) ;
 int read_write (struct scsi_cmnd*,struct rtsx_chip*) ;
 int set_chip_mode (struct scsi_cmnd*,struct rtsx_chip*) ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;
 int set_variable (struct scsi_cmnd*,struct rtsx_chip*) ;
 int suit_cmd (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_cfg_byte (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_eeprom2 (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_efuse (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_host_reg (struct scsi_cmnd*,struct rtsx_chip*) ;
 int write_phy_register (struct scsi_cmnd*,struct rtsx_chip*) ;

__attribute__((used)) static int app_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int result;

 switch (srb->cmnd[2]) {
 case 142:
 case 141:
  result = read_write(srb, chip);
  break;

 case 137:
  result = read_host_reg(srb, chip);
  break;

 case 129:
  result = write_host_reg(srb, chip);
  break;

 case 143:
  result = get_variable(srb, chip);
  break;

 case 134:
  result = set_variable(srb, chip);
  break;

 case 147:
 case 146:
  result = dma_access_ring_buffer(srb, chip);
  break;

 case 136:
  result = read_phy_register(srb, chip);
  break;

 case 128:
  result = write_phy_register(srb, chip);
  break;

 case 145:
  result = erase_eeprom2(srb, chip);
  break;

 case 139:
  result = read_eeprom2(srb, chip);
  break;

 case 131:
  result = write_eeprom2(srb, chip);
  break;

 case 138:
  result = read_efuse(srb, chip);
  break;

 case 130:
  result = write_efuse(srb, chip);
  break;

 case 140:
  result = read_cfg_byte(srb, chip);
  break;

 case 132:
  result = write_cfg_byte(srb, chip);
  break;

 case 135:
  result = set_chip_mode(srb, chip);
  break;

 case 133:
  result = suit_cmd(srb, chip);
  break;

 case 144:
  result = get_dev_status(srb, chip);
  break;

 default:
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 return result;
}
