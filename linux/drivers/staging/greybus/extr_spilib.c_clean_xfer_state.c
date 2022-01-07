
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_spilib {scalar_t__ op_timeout; scalar_t__ last_xfer_size; scalar_t__ tx_xfer_offset; scalar_t__ rx_xfer_offset; int * last_xfer; int * first_xfer; } ;



__attribute__((used)) static void clean_xfer_state(struct gb_spilib *spi)
{
 spi->first_xfer = ((void*)0);
 spi->last_xfer = ((void*)0);
 spi->rx_xfer_offset = 0;
 spi->tx_xfer_offset = 0;
 spi->last_xfer_size = 0;
 spi->op_timeout = 0;
}
