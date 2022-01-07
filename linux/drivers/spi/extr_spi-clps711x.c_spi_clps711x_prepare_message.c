
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; } ;
struct spi_clps711x_data {int syscon; } ;


 int SPI_CPHA ;
 int SYSCON3_ADCCKNSEN ;
 int SYSCON_OFFSET ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct spi_clps711x_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_clps711x_prepare_message(struct spi_master *master,
     struct spi_message *msg)
{
 struct spi_clps711x_data *hw = spi_master_get_devdata(master);
 struct spi_device *spi = msg->spi;


 return regmap_update_bits(hw->syscon, SYSCON_OFFSET, SYSCON3_ADCCKNSEN,
      (spi->mode & SPI_CPHA) ?
      SYSCON3_ADCCKNSEN : 0);
}
