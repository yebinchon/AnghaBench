
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct a3700_spi {TYPE_1__* master; } ;
struct TYPE_2__ {int dev; } ;


 int A3700_SPI_ADDR_PIN ;
 int A3700_SPI_DATA_PIN0 ;
 int A3700_SPI_DATA_PIN1 ;
 int A3700_SPI_IF_CFG_REG ;
 int A3700_SPI_INST_PIN ;
 int EINVAL ;



 int dev_err (int *,char*,unsigned int) ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int) ;

__attribute__((used)) static int a3700_spi_pin_mode_set(struct a3700_spi *a3700_spi,
      unsigned int pin_mode, bool receiving)
{
 u32 val;

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 val &= ~(A3700_SPI_INST_PIN | A3700_SPI_ADDR_PIN);
 val &= ~(A3700_SPI_DATA_PIN0 | A3700_SPI_DATA_PIN1);

 switch (pin_mode) {
 case 128:
  break;
 case 130:
  val |= A3700_SPI_DATA_PIN0;
  break;
 case 129:
  val |= A3700_SPI_DATA_PIN1;

  if (receiving)
   val |= A3700_SPI_ADDR_PIN;
  break;
 default:
  dev_err(&a3700_spi->master->dev, "wrong pin mode %u", pin_mode);
  return -EINVAL;
 }

 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);

 return 0;
}
