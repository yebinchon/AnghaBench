
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum threshold_decrement { ____Placeholder_threshold_decrement } threshold_decrement ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int MASK_OOKPEAK_THRESDEC ;
 int REG_OOKPEAK ;
 int dev_dbg (int *,char*) ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_ook_threshold_dec(struct spi_device *spi,
          enum threshold_decrement threshold_decrement)
{
 static const u8 td_map[] = {
  [130] = 138,
  [131] = 139,
  [132] = 140,
  [129] = 137,
  [128] = 136,
  [134] = 142,
  [133] = 141,
  [135] = 143,
 };

 if (unlikely(threshold_decrement >= ARRAY_SIZE(td_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_read_mod_write(spi, REG_OOKPEAK, MASK_OOKPEAK_THRESDEC,
       td_map[threshold_decrement]);
}
