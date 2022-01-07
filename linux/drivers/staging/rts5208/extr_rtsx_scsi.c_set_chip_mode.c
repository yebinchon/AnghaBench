
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
struct rtsx_chip {int phy_debug_mode; } ;


 int CDRESUMECTL ;
 int CHECK_PID (struct rtsx_chip*,int) ;
 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ;
 int STATUS_SUCCESS ;
 int TRANSPORT_FAILED ;
 int TRANSPORT_GOOD ;
 int rtsx_disable_bus_int (struct rtsx_chip*) ;
 int rtsx_enable_bus_int (struct rtsx_chip*) ;
 int rtsx_read_phy_register (struct rtsx_chip*,int,int*) ;
 int rtsx_write_phy_register (struct rtsx_chip*,int,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;

__attribute__((used)) static int set_chip_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int phy_debug_mode;
 int retval;
 u16 reg;

 if (!CHECK_PID(chip, 0x5208)) {
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
  return TRANSPORT_FAILED;
 }

 phy_debug_mode = (int)(srb->cmnd[3]);

 if (phy_debug_mode) {
  chip->phy_debug_mode = 1;
  retval = rtsx_write_register(chip, CDRESUMECTL, 0x77, 0);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;

  rtsx_disable_bus_int(chip);

  retval = rtsx_read_phy_register(chip, 0x1C, &reg);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;

  reg |= 0x0001;
  retval = rtsx_write_phy_register(chip, 0x1C, reg);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;
 } else {
  chip->phy_debug_mode = 0;
  retval = rtsx_write_register(chip, CDRESUMECTL, 0x77, 0x77);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;

  rtsx_enable_bus_int(chip);

  retval = rtsx_read_phy_register(chip, 0x1C, &reg);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;

  reg &= 0xFFFE;
  retval = rtsx_write_phy_register(chip, 0x1C, reg);
  if (retval != STATUS_SUCCESS)
   return TRANSPORT_FAILED;
 }

 return TRANSPORT_GOOD;
}
