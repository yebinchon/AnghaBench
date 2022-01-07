
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_sqi {scalar_t__ regs; } ;


 int PESQI_BDDONE ;
 int PESQI_DMAERR ;
 scalar_t__ PESQI_INT_ENABLE_REG ;
 scalar_t__ PESQI_INT_SIGEN_REG ;
 int PESQI_PKTCOMP ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void pic32_sqi_enable_int(struct pic32_sqi *sqi)
{
 u32 mask = PESQI_DMAERR | PESQI_BDDONE | PESQI_PKTCOMP;

 writel(mask, sqi->regs + PESQI_INT_ENABLE_REG);

 writel(mask, sqi->regs + PESQI_INT_SIGEN_REG);
}
