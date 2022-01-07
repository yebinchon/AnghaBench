
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int running; int * rx_packets; int rx; int tx; } ;


 int TB_CTL_RX_PKG_COUNT ;
 int tb_ctl_dbg (struct tb_ctl*,char*) ;
 int tb_ctl_rx_submit (int ) ;
 int tb_ring_start (int ) ;

void tb_ctl_start(struct tb_ctl *ctl)
{
 int i;
 tb_ctl_dbg(ctl, "control channel starting...\n");
 tb_ring_start(ctl->tx);
 tb_ring_start(ctl->rx);
 for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++)
  tb_ctl_rx_submit(ctl->rx_packets[i]);

 ctl->running = 1;
}
