
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;


 int CHIP_ERASE ;
 int PAGE_ERASE ;
 int SPI_HW_ERR ;
 int SPI_INVALID_COMMAND ;
 int SPI_NO_ERR ;
 int SPI_WREN ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int sf_enable_write (struct rtsx_chip*,int ) ;
 int sf_erase (struct rtsx_chip*,int,int,int) ;
 int spi_set_err_code (struct rtsx_chip*,int ) ;
 int spi_set_init_para (struct rtsx_chip*) ;

int spi_erase_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int retval;
 u8 ins, erase_mode;
 u32 addr;

 spi_set_err_code(chip, SPI_NO_ERR);

 ins = srb->cmnd[3];
 addr = ((u32)(srb->cmnd[4]) << 16) | ((u32)(srb->cmnd[5])
     << 8) | srb->cmnd[6];
 erase_mode = srb->cmnd[9];

 retval = spi_set_init_para(chip);
 if (retval != STATUS_SUCCESS) {
  spi_set_err_code(chip, SPI_HW_ERR);
  return STATUS_FAIL;
 }

 if (erase_mode == PAGE_ERASE) {
  retval = sf_enable_write(chip, SPI_WREN);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = sf_erase(chip, ins, 1, addr);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else if (erase_mode == CHIP_ERASE) {
  retval = sf_enable_write(chip, SPI_WREN);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = sf_erase(chip, ins, 0, 0);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else {
  spi_set_err_code(chip, SPI_INVALID_COMMAND);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
