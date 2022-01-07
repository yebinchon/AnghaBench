
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum address_filtering { ____Placeholder_address_filtering } address_filtering ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int MASK_PACKETCONFIG1_ADDRESSFILTERING ;



 int REG_PACKETCONFIG1 ;
 int dev_dbg (int *,char*) ;



 int rf69_read_mod_write (struct spi_device*,int ,int ,int const) ;
 scalar_t__ unlikely (int) ;

int rf69_set_address_filtering(struct spi_device *spi,
          enum address_filtering address_filtering)
{
 static const u8 af_map[] = {
  [130] = 131,
  [129] = 133,
  [128] =
   132,
 };

 if (unlikely(address_filtering >= ARRAY_SIZE(af_map))) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 return rf69_read_mod_write(spi, REG_PACKETCONFIG1,
       MASK_PACKETCONFIG1_ADDRESSFILTERING,
       af_map[address_filtering]);
}
