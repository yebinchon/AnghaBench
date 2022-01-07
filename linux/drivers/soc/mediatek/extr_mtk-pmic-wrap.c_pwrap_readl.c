
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {TYPE_1__* master; scalar_t__ base; } ;
typedef enum pwrap_regs { ____Placeholder_pwrap_regs } pwrap_regs ;
struct TYPE_2__ {scalar_t__* regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 pwrap_readl(struct pmic_wrapper *wrp, enum pwrap_regs reg)
{
 return readl(wrp->base + wrp->master->regs[reg]);
}
