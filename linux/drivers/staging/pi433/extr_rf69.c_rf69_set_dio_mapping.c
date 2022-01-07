
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int MASK_DIO0 ;
 int MASK_DIO1 ;
 int MASK_DIO2 ;
 int MASK_DIO3 ;
 int MASK_DIO4 ;
 int MASK_DIO5 ;
 int REG_DIOMAPPING1 ;
 int REG_DIOMAPPING2 ;
 int SHIFT_DIO0 ;
 int SHIFT_DIO1 ;
 int SHIFT_DIO2 ;
 int SHIFT_DIO3 ;
 int SHIFT_DIO4 ;
 int SHIFT_DIO5 ;
 int dev_dbg (int *,char*) ;
 int rf69_read_reg (struct spi_device*,int) ;
 int rf69_write_reg (struct spi_device*,int,int) ;

int rf69_set_dio_mapping(struct spi_device *spi, u8 dio_number, u8 value)
{
 u8 mask;
 u8 shift;
 u8 dio_addr;
 u8 dio_value;

 switch (dio_number) {
 case 0:
  mask = MASK_DIO0;
  shift = SHIFT_DIO0;
  dio_addr = REG_DIOMAPPING1;
  break;
 case 1:
  mask = MASK_DIO1;
  shift = SHIFT_DIO1;
  dio_addr = REG_DIOMAPPING1;
  break;
 case 2:
  mask = MASK_DIO2;
  shift = SHIFT_DIO2;
  dio_addr = REG_DIOMAPPING1;
  break;
 case 3:
  mask = MASK_DIO3;
  shift = SHIFT_DIO3;
  dio_addr = REG_DIOMAPPING1;
  break;
 case 4:
  mask = MASK_DIO4;
  shift = SHIFT_DIO4;
  dio_addr = REG_DIOMAPPING2;
  break;
 case 5:
  mask = MASK_DIO5;
  shift = SHIFT_DIO5;
  dio_addr = REG_DIOMAPPING2;
  break;
 default:
 dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }


 dio_value = rf69_read_reg(spi, dio_addr);

 dio_value = dio_value & ~mask;

 dio_value = dio_value | value << shift;

 return rf69_write_reg(spi, dio_addr, dio_value);
}
