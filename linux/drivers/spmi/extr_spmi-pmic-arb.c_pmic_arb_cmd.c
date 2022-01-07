
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spmi_pmic_arb {TYPE_1__* ver_ops; } ;
struct spmi_controller {int dev; } ;
struct TYPE_2__ {int (* non_data_cmd ) (struct spmi_controller*,int ,int ) ;} ;


 int EINVAL ;
 int SPMI_CMD_RESET ;
 int SPMI_CMD_WAKEUP ;
 int dev_dbg (int *,char*,int ,int ) ;
 struct spmi_pmic_arb* spmi_controller_get_drvdata (struct spmi_controller*) ;
 int stub1 (struct spmi_controller*,int ,int ) ;

__attribute__((used)) static int pmic_arb_cmd(struct spmi_controller *ctrl, u8 opc, u8 sid)
{
 struct spmi_pmic_arb *pmic_arb = spmi_controller_get_drvdata(ctrl);

 dev_dbg(&ctrl->dev, "cmd op:0x%x sid:%d\n", opc, sid);


 if (opc < SPMI_CMD_RESET || opc > SPMI_CMD_WAKEUP)
  return -EINVAL;

 return pmic_arb->ver_ops->non_data_cmd(ctrl, opc, sid);
}
