
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int bfa_ioc_cb_join_pos (struct bfa_ioc_s*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_cb_sync_join(struct bfa_ioc_s *ioc)
{
 u32 r32 = readl(ioc->ioc_regs.ioc_fwstate);
 u32 join_pos = bfa_ioc_cb_join_pos(ioc);

 writel((r32 | join_pos), ioc->ioc_regs.ioc_fwstate);
}
