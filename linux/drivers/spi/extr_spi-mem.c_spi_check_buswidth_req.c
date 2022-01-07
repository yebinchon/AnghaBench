
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct spi_mem {TYPE_1__* spi; } ;
struct TYPE_2__ {int mode; } ;


 int ENOTSUPP ;
 int SPI_RX_DUAL ;
 int SPI_RX_OCTAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_OCTAL ;
 int SPI_TX_QUAD ;

__attribute__((used)) static int spi_check_buswidth_req(struct spi_mem *mem, u8 buswidth, bool tx)
{
 u32 mode = mem->spi->mode;

 switch (buswidth) {
 case 1:
  return 0;

 case 2:
  if ((tx && (mode & (SPI_TX_DUAL | SPI_TX_QUAD))) ||
      (!tx && (mode & (SPI_RX_DUAL | SPI_RX_QUAD))))
   return 0;

  break;

 case 4:
  if ((tx && (mode & SPI_TX_QUAD)) ||
      (!tx && (mode & SPI_RX_QUAD)))
   return 0;

  break;

 case 8:
  if ((tx && (mode & SPI_TX_OCTAL)) ||
      (!tx && (mode & SPI_RX_OCTAL)))
   return 0;

  break;

 default:
  break;
 }

 return -ENOTSUPP;
}
