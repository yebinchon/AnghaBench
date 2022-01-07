
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ fpga_base_addr; } ;
struct TYPE_3__ {scalar_t__ plx9054_base_addr; } ;
struct net2272 {int lock; TYPE_2__ rdk2; int * ep; TYPE_1__ rdk1; } ;
typedef int irqreturn_t ;


 int CHANNEL_CLEAR_INTERRUPT ;
 int CHANNEL_ENABLE ;
 scalar_t__ DMACSR0 ;
 int DMAREQ ;
 int DMA_CHANNEL_0_TEST ;
 scalar_t__ INTCSR ;
 int IRQSTAT0 ;
 int IRQSTAT1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LOCAL_INTERRUPT_TEST ;
 int NET2272_PCI_IRQ ;
 int PCI_INTERRUPT_ENABLE ;
 scalar_t__ RDK2_IRQSTAT ;
 int net2272_handle_dma (int *) ;
 int net2272_handle_stat0_irqs (struct net2272*,int) ;
 int net2272_handle_stat1_irqs (struct net2272*,int) ;
 int net2272_read (struct net2272*,int ) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t net2272_irq(int irq, void *_dev)
{
 struct net2272 *dev = _dev;






 spin_lock(&dev->lock);
 net2272_handle_stat1_irqs(dev, net2272_read(dev, IRQSTAT1));
 net2272_handle_stat0_irqs(dev, net2272_read(dev, IRQSTAT0));

 spin_unlock(&dev->lock);

 return IRQ_HANDLED;
}
