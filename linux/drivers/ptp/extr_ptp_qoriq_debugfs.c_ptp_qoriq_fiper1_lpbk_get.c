
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ptp_qoriq_registers {TYPE_1__* ctrl_regs; } ;
struct ptp_qoriq {int (* read ) (int *) ;struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_ctrl; } ;


 int PP1L ;
 int stub1 (int *) ;

__attribute__((used)) static int ptp_qoriq_fiper1_lpbk_get(void *data, u64 *val)
{
 struct ptp_qoriq *ptp_qoriq = data;
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
 u32 ctrl;

 ctrl = ptp_qoriq->read(&regs->ctrl_regs->tmr_ctrl);
 *val = ctrl & PP1L ? 1 : 0;

 return 0;
}
