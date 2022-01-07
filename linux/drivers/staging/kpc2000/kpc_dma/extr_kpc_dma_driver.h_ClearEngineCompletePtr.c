
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {scalar_t__ eng_regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline
void ClearEngineCompletePtr(struct kpc_dma_device *eng)
{
 writel(0, eng->eng_regs + 4);
}
