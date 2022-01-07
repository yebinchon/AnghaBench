
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum lna_gain { ____Placeholder_lna_gain } lna_gain ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;







 int MASK_LNA_GAIN ;
 int REG_LNA ;

 int dev_dbg (int *,char*) ;






 int rf69_read_mod_write (struct spi_device*,int ,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_lna_gain(struct spi_device *spi, enum lna_gain lna_gain)
{
 static const u8 lna_gain_map[] = {
  [134] = 141,
  [133] = 140,
  [128] = 135,
  [132] = 139,
  [131] = 138,
  [130] = 137,
  [129] = 136,
 };

 if (unlikely(lna_gain >= ARRAY_SIZE(lna_gain_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_read_mod_write(spi, REG_LNA, MASK_LNA_GAIN,
       lna_gain_map[lna_gain]);
}
