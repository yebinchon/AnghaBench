
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
typedef enum mantisse { ____Placeholder_mantisse } mantisse ;


 int BW_MANT_16 ;
 int BW_MANT_20 ;
 int BW_MANT_24 ;
 int EINVAL ;
 int MASK_BW_DCC_FREQ ;
 int dev_dbg (int *,char*) ;



 int rf69_read_reg (struct spi_device*,int) ;
 int rf69_write_reg (struct spi_device*,int,int) ;

__attribute__((used)) static int rf69_set_bandwidth_intern(struct spi_device *spi, u8 reg,
         enum mantisse mantisse, u8 exponent)
{
 u8 bandwidth;


 if (exponent > 7) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }

 if ((mantisse != 130) &&
     (mantisse != 129) &&
     (mantisse != 128)) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }


 bandwidth = rf69_read_reg(spi, reg);


 bandwidth = bandwidth & MASK_BW_DCC_FREQ;


 switch (mantisse) {
 case 130:
  bandwidth = bandwidth | BW_MANT_16;
  break;
 case 129:
  bandwidth = bandwidth | BW_MANT_20;
  break;
 case 128:
  bandwidth = bandwidth | BW_MANT_24;
  break;
 }


 bandwidth = bandwidth | exponent;


 return rf69_write_reg(spi, reg, bandwidth);
}
