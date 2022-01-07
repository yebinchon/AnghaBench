
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lock; TYPE_2__* state; } ;
struct rp2_uart_port {TYPE_3__ port; scalar_t__ base; } ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 scalar_t__ RP2_CHAN_STAT ;
 int RP2_CHAN_STAT_MS_CHANGED_MASK ;
 int RP2_CHAN_STAT_RXDATA_m ;
 int RP2_CHAN_STAT_TXEMPTY_m ;
 int readl (scalar_t__) ;
 int rp2_rx_chars (struct rp2_uart_port*) ;
 int rp2_tx_chars (struct rp2_uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void rp2_ch_interrupt(struct rp2_uart_port *up)
{
 u32 status;

 spin_lock(&up->port.lock);





 status = readl(up->base + RP2_CHAN_STAT);
 writel(status, up->base + RP2_CHAN_STAT);

 if (status & RP2_CHAN_STAT_RXDATA_m)
  rp2_rx_chars(up);
 if (status & RP2_CHAN_STAT_TXEMPTY_m)
  rp2_tx_chars(up);
 if (status & RP2_CHAN_STAT_MS_CHANGED_MASK)
  wake_up_interruptible(&up->port.state->port.delta_msr_wait);

 spin_unlock(&up->port.lock);
}
