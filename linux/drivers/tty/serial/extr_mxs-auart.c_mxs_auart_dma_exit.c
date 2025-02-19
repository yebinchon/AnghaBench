
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int flags; } ;


 int AUART_CTRL2_DMAONERR ;
 int AUART_CTRL2_RXDMAE ;
 int AUART_CTRL2_TXDMAE ;
 int MXS_AUART_DMA_ENABLED ;
 int MXS_AUART_DMA_RX_READY ;
 int MXS_AUART_DMA_TX_SYNC ;
 int REG_CTRL2 ;
 int clear_bit (int ,int *) ;
 int mxs_auart_dma_exit_channel (struct mxs_auart_port*) ;
 int mxs_clr (int,struct mxs_auart_port*,int ) ;

__attribute__((used)) static void mxs_auart_dma_exit(struct mxs_auart_port *s)
{

 mxs_clr(AUART_CTRL2_TXDMAE | AUART_CTRL2_RXDMAE | AUART_CTRL2_DMAONERR,
  s, REG_CTRL2);

 mxs_auart_dma_exit_channel(s);
 s->flags &= ~MXS_AUART_DMA_ENABLED;
 clear_bit(MXS_AUART_DMA_TX_SYNC, &s->flags);
 clear_bit(MXS_AUART_DMA_RX_READY, &s->flags);
}
