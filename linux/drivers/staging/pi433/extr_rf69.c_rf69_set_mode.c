
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum mode { ____Placeholder_mode } mode ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int MASK_OPMODE_MODE ;





 int REG_OPMODE ;
 int dev_dbg (int *,char*) ;


 int rf69_read_mod_write (struct spi_device*,int ,int ,int const) ;



 scalar_t__ unlikely (int) ;

int rf69_set_mode(struct spi_device *spi, enum mode mode)
{
 static const u8 mode_map[] = {
  [128] = 133,
  [131] = 137,
  [129] = 134,
  [130] = 135,
  [132] = 136,
 };

 if (unlikely(mode >= ARRAY_SIZE(mode_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_read_mod_write(spi, REG_OPMODE, MASK_OPMODE_MODE,
       mode_map[mode]);
}
