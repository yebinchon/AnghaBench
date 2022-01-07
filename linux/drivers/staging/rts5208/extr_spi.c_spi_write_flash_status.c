
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;


 int CARD_DATA_SOURCE ;
 int CHECK_REG_CMD ;
 int PINGPONG_BUFFER ;
 int PPBUF_BASE2 ;
 int SPI_ADDRESS_BIT_24 ;
 int SPI_CA_NUMBER ;
 int SPI_CDO_MODE0 ;
 int SPI_COMMAND ;
 int SPI_COMMAND_BIT_8 ;
 int SPI_HW_ERR ;
 int SPI_LENGTH0 ;
 int SPI_LENGTH1 ;
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
 int sf_enable_write (struct rtsx_chip*,int) ;
 int spi_set_err_code (struct rtsx_chip*,int ) ;
 int spi_set_init_para (struct rtsx_chip*) ;

int spi_write_flash_status(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int retval;
 u8 ins, status, ewsr;

 ins = srb->cmnd[3];
 status = srb->cmnd[4];
 ewsr = srb->cmnd[5];

 retval = spi_set_init_para(chip);
 if (retval != STATUS_SUCCESS) {
  spi_set_err_code(chip, SPI_HW_ERR);
  return STATUS_FAIL;
 }

 retval = sf_enable_write(chip, ewsr);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01,
       PINGPONG_BUFFER);

 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
       SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_LENGTH1, 0xFF, 0);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF, 1);
 rtsx_add_cmd(chip, WRITE_REG_CMD, PPBUF_BASE2, 0xFF, status);
 rtsx_add_cmd(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
       SPI_TRANSFER0_START | SPI_CDO_MODE0);
 rtsx_add_cmd(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
       SPI_TRANSFER0_END);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval != STATUS_SUCCESS) {
  rtsx_clear_spi_error(chip);
  spi_set_err_code(chip, SPI_HW_ERR);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
