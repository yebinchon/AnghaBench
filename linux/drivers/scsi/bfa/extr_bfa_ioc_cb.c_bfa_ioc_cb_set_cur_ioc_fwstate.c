
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;


 int BFA_IOC_CB_JOIN_MASK ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_cb_set_cur_ioc_fwstate(struct bfa_ioc_s *ioc,
   enum bfi_ioc_state fwstate)
{
 u32 r32 = readl(ioc->ioc_regs.ioc_fwstate);

 writel((fwstate | (r32 & BFA_IOC_CB_JOIN_MASK)),
    ioc->ioc_regs.ioc_fwstate);
}
