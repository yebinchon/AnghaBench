
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s626_private {scalar_t__ ai_cmd_running; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;


 int S626_ACON1_BASE ;
 int S626_IRQ_GPIO3 ;
 int S626_IRQ_RPS1 ;
 int S626_MC1_SHUTDOWN ;
 scalar_t__ S626_P_ACON1 ;
 scalar_t__ S626_P_IER ;
 scalar_t__ S626_P_ISR ;
 scalar_t__ S626_P_MC1 ;
 int comedi_pci_detach (struct comedi_device*) ;
 int s626_free_dma_buffers (struct comedi_device*) ;
 int s626_write_misc2 (struct comedi_device*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s626_detach(struct comedi_device *dev)
{
 struct s626_private *devpriv = dev->private;

 if (devpriv) {

  devpriv->ai_cmd_running = 0;

  if (dev->mmio) {


   writel(0, dev->mmio + S626_P_IER);

   writel(S626_IRQ_GPIO3 | S626_IRQ_RPS1,
          dev->mmio + S626_P_ISR);


   s626_write_misc2(dev, 0);


   writel(S626_MC1_SHUTDOWN, dev->mmio + S626_P_MC1);
   writel(S626_ACON1_BASE, dev->mmio + S626_P_ACON1);
  }
 }
 comedi_pci_detach(dev);
 s626_free_dma_buffers(dev);
}
