
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_chip {scalar_t__ ic_version; scalar_t__ driver_first_load; scalar_t__ phy_debug_mode; int asic_code; } ;


 int CDRESUMECTL ;
 int CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ IC_VER_C ;
 scalar_t__ IC_VER_D ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_calibration (struct rtsx_chip*) ;
 int rtsx_disable_bus_int (struct rtsx_chip*) ;
 int rtsx_enable_bus_int (struct rtsx_chip*) ;
 int rtsx_read_phy_register (struct rtsx_chip*,int,int*) ;
 int rtsx_write_phy_register (struct rtsx_chip*,int,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int ) ;

__attribute__((used)) static int rtsx_enable_pcie_intr(struct rtsx_chip *chip)
{
 int ret;

 if (!chip->asic_code || !CHECK_PID(chip, 0x5208)) {
  rtsx_enable_bus_int(chip);
  return STATUS_SUCCESS;
 }

 if (chip->phy_debug_mode) {
  ret = rtsx_write_register(chip, CDRESUMECTL, 0x77, 0);
  if (ret)
   return ret;
  rtsx_disable_bus_int(chip);
 } else {
  rtsx_enable_bus_int(chip);
 }

 if (chip->ic_version >= IC_VER_D) {
  u16 reg;

  ret = rtsx_read_phy_register(chip, 0x00, &reg);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;

  reg &= 0xFE7F;
  reg |= 0x80;
  ret = rtsx_write_phy_register(chip, 0x00, reg);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;

  ret = rtsx_read_phy_register(chip, 0x1C, &reg);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;

  reg &= 0xFFF7;
  ret = rtsx_write_phy_register(chip, 0x1C, reg);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 if (chip->driver_first_load && (chip->ic_version < IC_VER_C))
  rtsx_calibration(chip);

 return STATUS_SUCCESS;
}
