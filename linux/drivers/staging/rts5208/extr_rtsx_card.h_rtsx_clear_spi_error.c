
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CARD_STOP ;
 int SPI_CLR_ERR ;
 int SPI_STOP ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static inline void rtsx_clear_spi_error(struct rtsx_chip *chip)
{
 rtsx_write_register(chip, CARD_STOP, SPI_STOP | SPI_CLR_ERR,
       SPI_STOP | SPI_CLR_ERR);
}
