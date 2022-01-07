
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum dagc { ____Placeholder_dagc } dagc ;


 int ARRAY_SIZE (int const*) ;



 int EINVAL ;
 int REG_TESTDAGC ;
 int dev_dbg (int *,char*) ;



 int rf69_write_reg (struct spi_device*,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_dagc(struct spi_device *spi, enum dagc dagc)
{
 static const u8 dagc_map[] = {
  [128] = 131,
  [130] = 133,
  [129] = 132,
 };

 if (unlikely(dagc >= ARRAY_SIZE(dagc_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_write_reg(spi, REG_TESTDAGC, dagc_map[dagc]);
}
