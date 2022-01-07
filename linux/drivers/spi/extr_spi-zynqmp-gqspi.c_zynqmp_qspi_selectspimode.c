
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zynqmp_qspi {int dev; } ;


 int GQSPI_GENFIFO_MODE_DUALSPI ;
 int GQSPI_GENFIFO_MODE_QUADSPI ;
 int GQSPI_GENFIFO_MODE_SPI ;



 int dev_warn (int ,char*) ;

__attribute__((used)) static inline u32 zynqmp_qspi_selectspimode(struct zynqmp_qspi *xqspi,
      u8 spimode)
{
 u32 mask = 0;

 switch (spimode) {
 case 130:
  mask = GQSPI_GENFIFO_MODE_DUALSPI;
  break;
 case 129:
  mask = GQSPI_GENFIFO_MODE_QUADSPI;
  break;
 case 128:
  mask = GQSPI_GENFIFO_MODE_SPI;
  break;
 default:
  dev_warn(xqspi->dev, "Invalid SPI mode\n");
 }

 return mask;
}
