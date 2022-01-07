
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sqi {scalar_t__ regs; } ;


 scalar_t__ PESQI_INT_ENABLE_REG ;
 scalar_t__ PESQI_INT_SIGEN_REG ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pic32_sqi_disable_int(struct pic32_sqi *sqi)
{
 writel(0, sqi->regs + PESQI_INT_ENABLE_REG);
 writel(0, sqi->regs + PESQI_INT_SIGEN_REG);
}
