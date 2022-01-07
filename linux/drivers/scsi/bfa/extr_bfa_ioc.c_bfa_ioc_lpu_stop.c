
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pss_ctl_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int __PSS_LPU0_RESET ;
 int __PSS_LPU1_RESET ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_lpu_stop(struct bfa_ioc_s *ioc)
{
 u32 pss_ctl;




 pss_ctl = readl(ioc->ioc_regs.pss_ctl_reg);
 pss_ctl |= (__PSS_LPU0_RESET | __PSS_LPU1_RESET);

 writel(pss_ctl, ioc->ioc_regs.pss_ctl_reg);
}
