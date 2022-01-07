
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum pa_ramp { ____Placeholder_pa_ramp } pa_ramp ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int REG_PARAMP ;
 int dev_dbg (int *,char*) ;
 int rf69_write_reg (struct spi_device*,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_pa_ramp(struct spi_device *spi, enum pa_ramp pa_ramp)
{
 static const u8 pa_ramp_map[] = {
  [132] = 147,
  [136] = 151,
  [140] = 155,
  [129] = 144,
  [134] = 149,
  [139] = 154,
  [141] = 156,
  [128] = 143,
  [130] = 145,
  [131] = 146,
  [133] = 148,
  [135] = 150,
  [137] = 152,
  [138] = 153,
  [142] = 157,
 };

 if (unlikely(pa_ramp >= ARRAY_SIZE(pa_ramp_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_write_reg(spi, REG_PARAMP, pa_ramp_map[pa_ramp]);
}
