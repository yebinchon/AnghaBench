
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct spmi_pmic_arb {int lock; int wr_base; TYPE_1__* ver_ops; } ;
struct spmi_controller {int dummy; } ;
struct TYPE_2__ {int (* offset ) (struct spmi_pmic_arb*,int,int ,int ) ;} ;


 int PMIC_ARB_CHANNEL_RW ;
 scalar_t__ PMIC_ARB_CMD ;
 int pmic_arb_base_write (struct spmi_pmic_arb*,scalar_t__,int) ;
 int pmic_arb_wait_for_done (struct spmi_controller*,int ,int,int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct spmi_pmic_arb* spmi_controller_get_drvdata (struct spmi_controller*) ;
 int stub1 (struct spmi_pmic_arb*,int,int ,int ) ;

__attribute__((used)) static int
pmic_arb_non_data_cmd_v1(struct spmi_controller *ctrl, u8 opc, u8 sid)
{
 struct spmi_pmic_arb *pmic_arb = spmi_controller_get_drvdata(ctrl);
 unsigned long flags;
 u32 cmd;
 int rc;
 u32 offset;

 rc = pmic_arb->ver_ops->offset(pmic_arb, sid, 0, PMIC_ARB_CHANNEL_RW);
 if (rc < 0)
  return rc;

 offset = rc;
 cmd = ((opc | 0x40) << 27) | ((sid & 0xf) << 20);

 raw_spin_lock_irqsave(&pmic_arb->lock, flags);
 pmic_arb_base_write(pmic_arb, offset + PMIC_ARB_CMD, cmd);
 rc = pmic_arb_wait_for_done(ctrl, pmic_arb->wr_base, sid, 0,
        PMIC_ARB_CHANNEL_RW);
 raw_spin_unlock_irqrestore(&pmic_arb->lock, flags);

 return rc;
}
