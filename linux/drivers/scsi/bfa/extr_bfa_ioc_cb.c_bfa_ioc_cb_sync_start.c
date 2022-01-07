
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int alt_ioc_fwstate; int ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef int bfa_boolean_t ;


 int BFA_IOC_CB_JOIN_MASK ;
 int BFA_TRUE ;
 int BFI_IOC_UNINIT ;
 int bfa_ioc_cb_sync_complete (struct bfa_ioc_s*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_cb_sync_start(struct bfa_ioc_s *ioc)
{
 u32 ioc_fwstate = readl(ioc->ioc_regs.ioc_fwstate);







 if (ioc_fwstate & BFA_IOC_CB_JOIN_MASK) {
  writel(BFI_IOC_UNINIT, ioc->ioc_regs.ioc_fwstate);
  writel(BFI_IOC_UNINIT, ioc->ioc_regs.alt_ioc_fwstate);
  return BFA_TRUE;
 }

 return bfa_ioc_cb_sync_complete(ioc);
}
