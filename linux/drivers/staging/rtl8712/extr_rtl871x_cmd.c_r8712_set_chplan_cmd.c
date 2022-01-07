
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
struct SetChannelPlan_param {int ChannelPlan; } ;


 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int _SetChannelPlan ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct SetChannelPlan_param*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
{
 struct cmd_obj *ph2c;
 struct SetChannelPlan_param *psetchplanpara;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 psetchplanpara = kmalloc(sizeof(*psetchplanpara), GFP_ATOMIC);
 if (!psetchplanpara) {
  kfree(ph2c);
  return;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, psetchplanpara,
    GEN_CMD_CODE(_SetChannelPlan));
 psetchplanpara->ChannelPlan = chplan;
 r8712_enqueue_cmd(pcmdpriv, ph2c);
}
