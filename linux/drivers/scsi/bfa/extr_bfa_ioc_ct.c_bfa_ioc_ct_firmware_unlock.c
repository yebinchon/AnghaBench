
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ioc_usage_sem_reg; int ioc_usage_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int WARN_ON (int) ;
 int bfa_ioc_sem_get (int ) ;
 int bfa_trc (struct bfa_ioc_s*,scalar_t__) ;
 scalar_t__ readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_firmware_unlock(struct bfa_ioc_s *ioc)
{
 u32 usecnt;




 bfa_ioc_sem_get(ioc->ioc_regs.ioc_usage_sem_reg);
 usecnt = readl(ioc->ioc_regs.ioc_usage_reg);
 WARN_ON(usecnt <= 0);

 usecnt--;
 writel(usecnt, ioc->ioc_regs.ioc_usage_reg);
 bfa_trc(ioc, usecnt);

 readl(ioc->ioc_regs.ioc_usage_sem_reg);
 writel(1, ioc->ioc_regs.ioc_usage_sem_reg);
}
