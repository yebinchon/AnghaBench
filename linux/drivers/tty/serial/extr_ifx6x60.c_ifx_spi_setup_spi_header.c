
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 unsigned char IFX_SPI_MORE_BIT ;
 unsigned char IFX_SPI_MORE_MASK ;
 int IFX_SPI_PAYLOAD_SIZE ;

__attribute__((used)) static void ifx_spi_setup_spi_header(unsigned char *txbuffer, int tx_count,
     unsigned char more)
{
 *(u16 *)(txbuffer) = tx_count;
 *(u16 *)(txbuffer+2) = IFX_SPI_PAYLOAD_SIZE;
 txbuffer[1] |= (more << IFX_SPI_MORE_BIT) & IFX_SPI_MORE_MASK;
}
