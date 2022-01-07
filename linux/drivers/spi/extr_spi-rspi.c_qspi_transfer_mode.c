
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int tx_nbits; int rx_nbits; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;


 int SPCMD_SPIMOD_DUAL ;
 int SPCMD_SPIMOD_QUAD ;
 int SPCMD_SPRW ;



__attribute__((used)) static u16 qspi_transfer_mode(const struct spi_transfer *xfer)
{
 if (xfer->tx_buf)
  switch (xfer->tx_nbits) {
  case 128:
   return SPCMD_SPIMOD_QUAD;
  case 129:
   return SPCMD_SPIMOD_DUAL;
  default:
   return 0;
  }
 if (xfer->rx_buf)
  switch (xfer->rx_nbits) {
  case 128:
   return SPCMD_SPIMOD_QUAD | SPCMD_SPRW;
  case 129:
   return SPCMD_SPIMOD_DUAL | SPCMD_SPRW;
  default:
   return 0;
  }

 return 0;
}
