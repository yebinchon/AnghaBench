
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kpc_dma_device {int dummy; } ;


 int GetEngineControl (struct kpc_dma_device*) ;
 int WriteEngineControl (struct kpc_dma_device*,int ) ;

__attribute__((used)) static inline
void SetClearEngineControl(struct kpc_dma_device *eng, u32 set_bits, u32 clear_bits)
{
 u32 val = GetEngineControl(eng);

 val |= set_bits;
 val &= ~clear_bits;
 WriteEngineControl(eng, val);
}
