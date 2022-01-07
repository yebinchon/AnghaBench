
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int frame_pool; int * rx_packets; scalar_t__ tx; scalar_t__ rx; } ;


 int TB_CTL_RX_PKG_COUNT ;
 int dma_pool_destroy (int ) ;
 int kfree (struct tb_ctl*) ;
 int tb_ctl_pkg_free (int ) ;
 int tb_ring_free (scalar_t__) ;

void tb_ctl_free(struct tb_ctl *ctl)
{
 int i;

 if (!ctl)
  return;

 if (ctl->rx)
  tb_ring_free(ctl->rx);
 if (ctl->tx)
  tb_ring_free(ctl->tx);


 for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++)
  tb_ctl_pkg_free(ctl->rx_packets[i]);


 dma_pool_destroy(ctl->frame_pool);
 kfree(ctl);
}
