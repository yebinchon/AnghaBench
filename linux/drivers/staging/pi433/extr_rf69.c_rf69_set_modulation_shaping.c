
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
typedef enum mod_shaping { ____Placeholder_mod_shaping } mod_shaping ;


 int DATAMODUL_MODULATION_SHAPE_0_3 ;
 int DATAMODUL_MODULATION_SHAPE_0_5 ;
 int DATAMODUL_MODULATION_SHAPE_1_0 ;
 int DATAMODUL_MODULATION_SHAPE_2BR ;
 int DATAMODUL_MODULATION_SHAPE_BR ;
 int DATAMODUL_MODULATION_SHAPE_NONE ;
 int EINVAL ;

 int MASK_DATAMODUL_MODULATION_SHAPE ;

 int REG_DATAMODUL ;






 int dev_dbg (int *,char*) ;
 int rf69_get_modulation (struct spi_device*) ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int ) ;

int rf69_set_modulation_shaping(struct spi_device *spi,
    enum mod_shaping mod_shaping)
{
 switch (rf69_get_modulation(spi)) {
 case 135:
  switch (mod_shaping) {
  case 128:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_NONE);
  case 131:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_1_0);
  case 132:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_0_5);
  case 133:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_0_3);
  default:
   dev_dbg(&spi->dev, "set: illegal input param");
   return -EINVAL;
  }
 case 134:
  switch (mod_shaping) {
  case 128:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_NONE);
  case 129:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_BR);
  case 130:
   return rf69_read_mod_write(spi, REG_DATAMODUL,
         MASK_DATAMODUL_MODULATION_SHAPE,
         DATAMODUL_MODULATION_SHAPE_2BR);
  default:
   dev_dbg(&spi->dev, "set: illegal input param");
   return -EINVAL;
  }
 default:
  dev_dbg(&spi->dev, "set: modulation undefined");
  return -EINVAL;
 }
}
