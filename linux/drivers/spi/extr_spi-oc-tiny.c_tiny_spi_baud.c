
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {unsigned int baudwidth; int freq; } ;
struct spi_device {int dummy; } ;


 int DIV_ROUND_UP (int ,unsigned int) ;
 unsigned int min (int ,unsigned int) ;
 struct tiny_spi* tiny_spi_to_hw (struct spi_device*) ;

__attribute__((used)) static unsigned int tiny_spi_baud(struct spi_device *spi, unsigned int hz)
{
 struct tiny_spi *hw = tiny_spi_to_hw(spi);

 return min(DIV_ROUND_UP(hw->freq, hz * 2), (1U << hw->baudwidth)) - 1;
}
