
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp2000_device {int dma_common_regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KPC_DMA_CARD_IRQ_ENABLE ;
 int KPC_DMA_CARD_USER_INTERRUPT_ACTIVE ;
 int KPC_DMA_CARD_USER_INTERRUPT_MODE ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t kp2000_irq_handler(int irq, void *dev_id)
{
 struct kp2000_device *pcard = dev_id;

 writel(KPC_DMA_CARD_IRQ_ENABLE |
        KPC_DMA_CARD_USER_INTERRUPT_MODE |
        KPC_DMA_CARD_USER_INTERRUPT_ACTIVE,
        pcard->dma_common_regs);
 return IRQ_HANDLED;
}
