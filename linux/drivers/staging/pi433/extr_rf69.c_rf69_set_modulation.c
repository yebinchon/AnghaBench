
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum modulation { ____Placeholder_modulation } modulation ;


 int ARRAY_SIZE (int const*) ;


 int EINVAL ;

 int MASK_DATAMODUL_MODULATION_TYPE ;

 int REG_DATAMODUL ;
 int dev_dbg (int *,char*) ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_modulation(struct spi_device *spi, enum modulation modulation)
{
 static const u8 modulation_map[] = {
  [128] = 130,
  [129] = 131,
 };

 if (unlikely(modulation >= ARRAY_SIZE(modulation_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_read_mod_write(spi, REG_DATAMODUL,
       MASK_DATAMODUL_MODULATION_TYPE,
       modulation_map[modulation]);
}
