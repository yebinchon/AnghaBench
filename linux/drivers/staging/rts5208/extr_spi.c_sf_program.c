
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int SPI_ADDR0 ;
 int SPI_ADDR1 ;
 int SPI_ADDR2 ;
 int SPI_ADDRESS_BIT_24 ;
 int SPI_CADO_MODE0 ;
 int SPI_CA_NUMBER ;
 int SPI_CDO_MODE0 ;
 int SPI_COMMAND ;
 int SPI_COMMAND_BIT_8 ;
 int SPI_LENGTH0 ;
 int SPI_LENGTH1 ;
 int SPI_TRANSFER0 ;
 int SPI_TRANSFER0_END ;
 int SPI_TRANSFER0_START ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;

__attribute__((used)) static void sf_program(struct rtsx_chip *chip, u8 ins, u8 addr_mode, u32 addr,
         u16 len)
{
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
       SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF, (u8)len);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_LENGTH1, 0xFF, (u8)(len >> 8));
 if (addr_mode) {
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF, (u8)addr);
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF,
        (u8)(addr >> 8));
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR2, 0xFF,
        (u8)(addr >> 16));
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
        SPI_TRANSFER0_START | SPI_CADO_MODE0);
 } else {
  rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
        SPI_TRANSFER0_START | SPI_CDO_MODE0);
 }
 rtsx_add_cmd(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
       SPI_TRANSFER0_END);
}
