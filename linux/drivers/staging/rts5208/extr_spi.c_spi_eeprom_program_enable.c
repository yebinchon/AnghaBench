
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int SPI_CA_MODE0 ;
 int SPI_CA_NUMBER ;
 int SPI_COMMAND ;
 int SPI_TRANSFER0 ;
 int SPI_TRANSFER0_END ;
 int SPI_TRANSFER0_START ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int spi_eeprom_program_enable(struct rtsx_chip *chip)
{
 int retval;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF, 0x86);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, 0x13);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
       SPI_TRANSFER0_START | SPI_CA_MODE0);
 rtsx_add_cmd(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
       SPI_TRANSFER0_END);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval < 0)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
