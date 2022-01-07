
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_info {int err_code; } ;
struct rtsx_chip {struct spi_info spi; } ;



__attribute__((used)) static inline void spi_set_err_code(struct rtsx_chip *chip, u8 err_code)
{
 struct spi_info *spi = &chip->spi;

 spi->err_code = err_code;
}
