
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int * rx_buf_virt; } ;
struct pch_spi_data {int bpw_len; TYPE_2__* cur_trans; TYPE_1__ dma; } ;
struct TYPE_4__ {int * rx_buf; } ;



__attribute__((used)) static void pch_spi_copy_rx_data_for_dma(struct pch_spi_data *data, int bpw)
{
 int j;
 u8 *rx_buf;
 u16 *rx_sbuf;
 const u8 *rx_dma_buf;
 const u16 *rx_dma_sbuf;


 if (!data->cur_trans->rx_buf)
  return;

 if (bpw == 8) {
  rx_buf = data->cur_trans->rx_buf;
  rx_dma_buf = data->dma.rx_buf_virt;
  for (j = 0; j < data->bpw_len; j++)
   *rx_buf++ = *rx_dma_buf++ & 0xFF;
  data->cur_trans->rx_buf = rx_buf;
 } else {
  rx_sbuf = data->cur_trans->rx_buf;
  rx_dma_sbuf = data->dma.rx_buf_virt;
  for (j = 0; j < data->bpw_len; j++)
   *rx_sbuf++ = *rx_dma_sbuf++;
  data->cur_trans->rx_buf = rx_sbuf;
 }
}
