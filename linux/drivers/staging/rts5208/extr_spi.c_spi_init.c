
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CS_POLARITY_LOW ;
 int DTO_MSB_FIRST ;
 int EDO_TIMING_MASK ;
 int SAMPLE_DELAY_HALF ;
 int SPI_AUTO ;
 int SPI_CONTROL ;
 int SPI_MASTER ;
 int SPI_MODE0 ;
 int SPI_TCTL ;
 int STATUS_SUCCESS ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static int spi_init(struct rtsx_chip *chip)
{
 int retval;

 retval = rtsx_write_register(chip, SPI_CONTROL, 0xFF,
         CS_POLARITY_LOW | DTO_MSB_FIRST
         | SPI_MASTER | SPI_MODE0 | SPI_AUTO);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, SPI_TCTL, EDO_TIMING_MASK,
         SAMPLE_DELAY_HALF);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
