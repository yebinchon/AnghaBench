
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {int rx_dma_buf; int rx_sgl; int dev; TYPE_2__ port; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int AUART_STAT_BERR ;
 int AUART_STAT_FERR ;
 int AUART_STAT_OERR ;
 int AUART_STAT_PERR ;
 int AUART_STAT_RXCOUNT_MASK ;
 int DMA_FROM_DEVICE ;
 int REG_STAT ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int mxs_auart_dma_prep_rx (struct mxs_auart_port*) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 int mxs_write (int,struct mxs_auart_port*,int ) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,int ,int) ;

__attribute__((used)) static void dma_rx_callback(void *arg)
{
 struct mxs_auart_port *s = (struct mxs_auart_port *) arg;
 struct tty_port *port = &s->port.state->port;
 int count;
 u32 stat;

 dma_unmap_sg(s->dev, &s->rx_sgl, 1, DMA_FROM_DEVICE);

 stat = mxs_read(s, REG_STAT);
 stat &= ~(AUART_STAT_OERR | AUART_STAT_BERR |
   AUART_STAT_PERR | AUART_STAT_FERR);

 count = stat & AUART_STAT_RXCOUNT_MASK;
 tty_insert_flip_string(port, s->rx_dma_buf, count);

 mxs_write(stat, s, REG_STAT);
 tty_flip_buffer_push(port);


 mxs_auart_dma_prep_rx(s);
}
