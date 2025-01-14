
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct fsl_espi {unsigned int rx_pos; int rx_done; TYPE_1__* rx_t; int m_transfers; scalar_t__ swab; } ;
struct TYPE_3__ {unsigned int len; int transfer_list; void* rx_buf; } ;


 int ESPI_SPIRF ;
 scalar_t__ SPIE_RXCNT (scalar_t__) ;
 scalar_t__ fsl_espi_read_reg (struct fsl_espi*,int ) ;
 int fsl_espi_read_reg16 (struct fsl_espi*,int ) ;
 int fsl_espi_read_reg8 (struct fsl_espi*,int ) ;
 scalar_t__ list_is_last (int *,int ) ;
 TYPE_1__* list_next_entry (TYPE_1__*,int ) ;
 scalar_t__ min (unsigned int,unsigned int) ;
 int swab16 (int ) ;
 scalar_t__ swahb32 (scalar_t__) ;
 int transfer_list ;

__attribute__((used)) static void fsl_espi_read_rx_fifo(struct fsl_espi *espi, u32 events)
{
 u32 rx_fifo_avail = SPIE_RXCNT(events);
 unsigned int rx_left;
 void *rx_buf;

start:
 rx_left = espi->rx_t->len - espi->rx_pos;
 rx_buf = espi->rx_t->rx_buf;
 while (rx_fifo_avail >= min(4U, rx_left) && rx_left) {
  if (rx_left >= 4) {
   u32 val = fsl_espi_read_reg(espi, ESPI_SPIRF);

   if (rx_buf && espi->swab)
    *(u32 *)(rx_buf + espi->rx_pos) = swahb32(val);
   else if (rx_buf)
    *(u32 *)(rx_buf + espi->rx_pos) = val;
   espi->rx_pos += 4;
   rx_left -= 4;
   rx_fifo_avail -= 4;
  } else if (rx_left >= 2 && rx_buf && espi->swab) {
   u16 val = fsl_espi_read_reg16(espi, ESPI_SPIRF);

   *(u16 *)(rx_buf + espi->rx_pos) = swab16(val);
   espi->rx_pos += 2;
   rx_left -= 2;
   rx_fifo_avail -= 2;
  } else {
   u8 val = fsl_espi_read_reg8(espi, ESPI_SPIRF);

   if (rx_buf)
    *(u8 *)(rx_buf + espi->rx_pos) = val;
   espi->rx_pos += 1;
   rx_left -= 1;
   rx_fifo_avail -= 1;
  }
 }

 if (!rx_left) {
  if (list_is_last(&espi->rx_t->transfer_list,
      espi->m_transfers)) {
   espi->rx_done = 1;
   return;
  }
  espi->rx_t = list_next_entry(espi->rx_t, transfer_list);
  espi->rx_pos = 0;

  if (rx_fifo_avail)
   goto start;
 }
}
