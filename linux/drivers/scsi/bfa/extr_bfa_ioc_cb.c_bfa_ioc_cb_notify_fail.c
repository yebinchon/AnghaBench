
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int err_set; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void
bfa_ioc_cb_notify_fail(struct bfa_ioc_s *ioc)
{
 writel(~0U, ioc->ioc_regs.err_set);
 readl(ioc->ioc_regs.err_set);
}
