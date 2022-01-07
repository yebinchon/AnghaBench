
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int CARD_DATA_SOURCE ;
 int CARD_GPIO_DIR ;
 int CHECK_REG_CMD ;
 int RING_BUFFER ;
 int SPI_ADDR0 ;
 int SPI_ADDR1 ;
 int SPI_CADI_MODE0 ;
 int SPI_CA_NUMBER ;
 int SPI_COMMAND ;
 int SPI_DATA ;
 int SPI_LENGTH0 ;
 int SPI_TRANSFER0 ;
 int SPI_TRANSFER0_END ;
 int SPI_TRANSFER0_START ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int spi_init_eeprom (struct rtsx_chip*) ;
 int wait_timeout (int) ;

int spi_read_eeprom(struct rtsx_chip *chip, u16 addr, u8 *val)
{
 int retval;
 u8 data;

 retval = spi_init_eeprom(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_GPIO_DIR, 0x01, 0);
 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01, RING_BUFFER);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, 0x06);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF, (u8)addr);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF, (u8)(addr >> 8));
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF, 0x46);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF, 1);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
       SPI_TRANSFER0_START | SPI_CADI_MODE0);
 rtsx_add_cmd(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
       SPI_TRANSFER0_END);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval < 0)
  return STATUS_FAIL;

 wait_timeout(5);
 retval = rtsx_read_register(chip, SPI_DATA, &data);
 if (retval)
  return retval;

 if (val)
  *val = data;

 retval = rtsx_write_register(chip, CARD_GPIO_DIR, 0x01, 0x01);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
