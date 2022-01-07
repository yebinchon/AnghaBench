
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {struct device* dev; } ;
struct msm_dma {unsigned int count; int dir; int phys; int enable_bit; int chan; } ;
struct device {int dummy; } ;


 int UARTDM_DMEN ;
 int dma_unmap_single (struct device*,int ,unsigned int,int ) ;
 int dmaengine_terminate_all (int ) ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void msm_stop_dma(struct uart_port *port, struct msm_dma *dma)
{
 struct device *dev = port->dev;
 unsigned int mapped;
 u32 val;

 mapped = dma->count;
 dma->count = 0;

 dmaengine_terminate_all(dma->chan);
 val = msm_read(port, UARTDM_DMEN);
 val &= ~dma->enable_bit;
 msm_write(port, val, UARTDM_DMEN);

 if (mapped)
  dma_unmap_single(dev, dma->phys, mapped, dma->dir);
}
