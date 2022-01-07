
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ptp_qoriq_registers {TYPE_1__* ctrl_regs; } ;
struct ptp_qoriq {int (* write ) (int *,int ) ;int (* read ) (int *) ;struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_ctrl; } ;


 int PP1L ;
 int stub1 (int *) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static int ptp_qoriq_fiper1_lpbk_set(void *data, u64 val)
{
 struct ptp_qoriq *ptp_qoriq = data;
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
 u32 ctrl;

 ctrl = ptp_qoriq->read(&regs->ctrl_regs->tmr_ctrl);
 if (val == 0)
  ctrl &= ~PP1L;
 else
  ctrl |= PP1L;

 ptp_qoriq->write(&regs->ctrl_regs->tmr_ctrl, ctrl);
 return 0;
}
