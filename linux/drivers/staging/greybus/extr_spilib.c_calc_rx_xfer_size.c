
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct gb_spi_transfer_response {int dummy; } ;



__attribute__((used)) static size_t calc_rx_xfer_size(u32 rx_size, u32 *tx_xfer_size, u32 len,
    size_t data_max)
{
 size_t rx_xfer_size;

 data_max -= sizeof(struct gb_spi_transfer_response);

 if (rx_size + len > data_max)
  rx_xfer_size = data_max - rx_size;
 else
  rx_xfer_size = len;


 if (*tx_xfer_size && rx_xfer_size > *tx_xfer_size)
  rx_xfer_size = *tx_xfer_size;
 if (*tx_xfer_size && rx_xfer_size < *tx_xfer_size)
  *tx_xfer_size = rx_xfer_size;

 return rx_xfer_size;
}
