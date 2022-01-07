
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {scalar_t__ eng_regs; } ;
struct kpc_dma_descriptor {int MyDMAAddr; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline
void SetEngineNextPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor *desc)
{
 writel(desc->MyDMAAddr, eng->eng_regs + 2);
}
