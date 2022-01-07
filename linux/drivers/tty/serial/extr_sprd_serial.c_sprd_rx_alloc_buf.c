
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int virt; int phys_addr; } ;
struct TYPE_3__ {int dev; } ;
struct sprd_uart_port {TYPE_2__ rx_dma; TYPE_1__ port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPRD_UART_RX_SIZE ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static int sprd_rx_alloc_buf(struct sprd_uart_port *sp)
{
 sp->rx_dma.virt = dma_alloc_coherent(sp->port.dev, SPRD_UART_RX_SIZE,
          &sp->rx_dma.phys_addr, GFP_KERNEL);
 if (!sp->rx_dma.virt)
  return -ENOMEM;

 return 0;
}
