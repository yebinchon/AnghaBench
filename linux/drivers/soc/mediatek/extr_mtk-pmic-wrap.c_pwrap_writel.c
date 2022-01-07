
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {TYPE_1__* master; scalar_t__ base; } ;
typedef enum pwrap_regs { ____Placeholder_pwrap_regs } pwrap_regs ;
struct TYPE_2__ {scalar_t__* regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pwrap_writel(struct pmic_wrapper *wrp, u32 val, enum pwrap_regs reg)
{
 writel(val, wrp->base + wrp->master->regs[reg]);
}
