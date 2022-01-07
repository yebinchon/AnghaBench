
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;


 int DS2404_READ_MEMORY_CMD ;
 int ds2404_read_byte (struct device*) ;
 int ds2404_reset (struct device*) ;
 int ds2404_write_byte (struct device*,int) ;

__attribute__((used)) static void ds2404_read_memory(struct device *dev, u16 offset,
          int length, u8 *out)
{
 ds2404_reset(dev);
 ds2404_write_byte(dev, DS2404_READ_MEMORY_CMD);
 ds2404_write_byte(dev, offset & 0xff);
 ds2404_write_byte(dev, (offset >> 8) & 0xff);
 while (length--)
  *out++ = ds2404_read_byte(dev);
}
