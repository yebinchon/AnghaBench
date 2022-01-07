
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
typedef enum antenna_impedance { ____Placeholder_antenna_impedance } antenna_impedance ;


 int EINVAL ;
 int MASK_LNA_ZIN ;
 int REG_LNA ;
 int dev_dbg (int *,char*) ;

 int rf69_clear_bit (struct spi_device*,int ,int ) ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;


int rf69_set_antenna_impedance(struct spi_device *spi,
          enum antenna_impedance antenna_impedance)
{
 switch (antenna_impedance) {
 case 129:
  return rf69_clear_bit(spi, REG_LNA, MASK_LNA_ZIN);
 case 128:
  return rf69_set_bit(spi, REG_LNA, MASK_LNA_ZIN);
 default:
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }
}
