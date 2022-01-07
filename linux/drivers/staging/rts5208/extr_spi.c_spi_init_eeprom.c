
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ asic_code; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int CLK_30 ;
 int CS_POLARITY_HIGH ;
 int EDO_TIMING_MASK ;
 int SAMPLE_DELAY_HALF ;
 int SPI_CARD ;
 int SPI_CLK_DIVIDER0 ;
 int SPI_CLK_DIVIDER1 ;
 int SPI_CLK_EN ;
 int SPI_CONTROL ;
 int SPI_EEPROM_AUTO ;
 int SPI_OUTPUT_EN ;
 int SPI_TCTL ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int select_card (struct rtsx_chip*,int ) ;
 int switch_clock (struct rtsx_chip*,int) ;
 int wait_timeout (int) ;

__attribute__((used)) static int spi_init_eeprom(struct rtsx_chip *chip)
{
 int retval;
 int clk;

 if (chip->asic_code)
  clk = 30;
 else
  clk = CLK_30;

 retval = rtsx_write_register(chip, SPI_CLK_DIVIDER1, 0xFF, 0x00);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, SPI_CLK_DIVIDER0, 0xFF, 0x27);
 if (retval)
  return retval;

 retval = switch_clock(chip, clk);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = select_card(chip, SPI_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_write_register(chip, CARD_CLK_EN, SPI_CLK_EN,
         SPI_CLK_EN);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, CARD_OE, SPI_OUTPUT_EN,
         SPI_OUTPUT_EN);
 if (retval)
  return retval;

 wait_timeout(10);

 retval = rtsx_write_register(chip, SPI_CONTROL, 0xFF,
         CS_POLARITY_HIGH | SPI_EEPROM_AUTO);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, SPI_TCTL, EDO_TIMING_MASK,
         SAMPLE_DELAY_HALF);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
