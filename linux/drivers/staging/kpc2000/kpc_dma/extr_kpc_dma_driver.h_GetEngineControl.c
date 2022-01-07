
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kpc_dma_device {scalar_t__ eng_regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline
u32 GetEngineControl(struct kpc_dma_device *eng)
{
 return readl(eng->eng_regs + 1);
}
