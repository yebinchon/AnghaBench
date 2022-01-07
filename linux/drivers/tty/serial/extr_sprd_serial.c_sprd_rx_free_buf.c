
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys_addr; scalar_t__ virt; } ;
struct TYPE_3__ {int dev; } ;
struct sprd_uart_port {TYPE_2__ rx_dma; TYPE_1__ port; } ;


 int SPRD_UART_RX_SIZE ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void sprd_rx_free_buf(struct sprd_uart_port *sp)
{
 if (sp->rx_dma.virt)
  dma_free_coherent(sp->port.dev, SPRD_UART_RX_SIZE,
      sp->rx_dma.virt, sp->rx_dma.phys_addr);

}
