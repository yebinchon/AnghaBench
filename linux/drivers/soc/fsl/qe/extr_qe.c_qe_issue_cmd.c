
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int cecr; int cecdr; } ;
struct TYPE_4__ {TYPE_1__ cp; } ;


 scalar_t__ QE_ASSIGN_PAGE ;
 scalar_t__ QE_ASSIGN_RISC ;
 scalar_t__ QE_CR_FLG ;
 scalar_t__ QE_CR_MCN_NORMAL_SHIFT ;
 scalar_t__ QE_CR_MCN_RISC_ASSIGN_SHIFT ;
 scalar_t__ QE_CR_MCN_USB_SHIFT ;
 scalar_t__ QE_CR_SNUM_SHIFT ;
 scalar_t__ QE_CR_SUBBLOCK_USB ;
 scalar_t__ QE_RESET ;
 scalar_t__ in_be32 (int *) ;
 int out_be32 (int *,scalar_t__) ;
 TYPE_2__* qe_immr ;
 int qe_lock ;
 scalar_t__ spin_event_timeout (int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol, u32 cmd_input)
{
 unsigned long flags;
 u8 mcn_shift = 0, dev_shift = 0;
 u32 ret;

 spin_lock_irqsave(&qe_lock, flags);
 if (cmd == QE_RESET) {
  out_be32(&qe_immr->cp.cecr, (u32) (cmd | QE_CR_FLG));
 } else {
  if (cmd == QE_ASSIGN_PAGE) {

   dev_shift = QE_CR_SNUM_SHIFT;
  } else if (cmd == QE_ASSIGN_RISC) {


   dev_shift = QE_CR_SNUM_SHIFT;
   mcn_shift = QE_CR_MCN_RISC_ASSIGN_SHIFT;
  } else {
   if (device == QE_CR_SUBBLOCK_USB)
    mcn_shift = QE_CR_MCN_USB_SHIFT;
   else
    mcn_shift = QE_CR_MCN_NORMAL_SHIFT;
  }

  out_be32(&qe_immr->cp.cecdr, cmd_input);
  out_be32(&qe_immr->cp.cecr,
    (cmd | QE_CR_FLG | ((u32) device << dev_shift) | (u32)
     mcn_protocol << mcn_shift));
 }


 ret = spin_event_timeout((in_be32(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
      100, 0);


 spin_unlock_irqrestore(&qe_lock, flags);

 return ret == 1;
}
