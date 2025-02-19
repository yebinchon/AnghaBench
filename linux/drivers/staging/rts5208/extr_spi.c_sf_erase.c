
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int SPI_ADDR0 ;
 int SPI_ADDR1 ;
 int SPI_ADDR2 ;
 int SPI_ADDRESS_BIT_24 ;
 int SPI_CA_MODE0 ;
 int SPI_CA_NUMBER ;
 int SPI_COMMAND ;
 int SPI_COMMAND_BIT_8 ;
 int SPI_C_MODE0 ;
 int SPI_HW_ERR ;
 int SPI_TRANSFER0 ;
 int SPI_TRANSFER0_END ;
 int SPI_TRANSFER0_START ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_clear_spi_error (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;
 int spi_set_err_code (struct rtsx_chip*,int ) ;

__attribute__((used)) static int sf_erase(struct rtsx_chip *chip, u8 ins, u8 addr_mode, u32 addr)
{
 int retval;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
       SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
 if (addr_mode) {
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF, (u8)addr);
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF,
        (u8)(addr >> 8));
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR2, 0xFF,
        (u8)(addr >> 16));
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
        SPI_TRANSFER0_START | SPI_CA_MODE0);
 } else {
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
        SPI_TRANSFER0_START | SPI_C_MODE0);
 }
 rtsx_add_cmd(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
       SPI_TRANSFER0_END);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval < 0) {
  rtsx_clear_spi_error(chip);
  spi_set_err_code(chip, SPI_HW_ERR);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
