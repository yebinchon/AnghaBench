
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pch_spi_data {int bpw_len; int* pkt_rx_buff; TYPE_1__* cur_trans; } ;
struct TYPE_2__ {int * rx_buf; } ;



__attribute__((used)) static void pch_spi_copy_rx_data(struct pch_spi_data *data, int bpw)
{
 int j;
 u8 *rx_buf;
 u16 *rx_sbuf;


 if (!data->cur_trans->rx_buf)
  return;

 if (bpw == 8) {
  rx_buf = data->cur_trans->rx_buf;
  for (j = 0; j < data->bpw_len; j++)
   *rx_buf++ = data->pkt_rx_buff[j] & 0xFF;
 } else {
  rx_sbuf = data->cur_trans->rx_buf;
  for (j = 0; j < data->bpw_len; j++)
   *rx_sbuf++ = data->pkt_rx_buff[j];
 }
}
