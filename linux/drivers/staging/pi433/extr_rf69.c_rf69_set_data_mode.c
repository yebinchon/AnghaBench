
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int MASK_DATAMODUL_MODE ;
 int REG_DATAMODUL ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int ) ;

int rf69_set_data_mode(struct spi_device *spi, u8 data_mode)
{
 return rf69_read_mod_write(spi, REG_DATAMODUL, MASK_DATAMODUL_MODE,
       data_mode);
}
