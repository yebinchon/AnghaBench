
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drvint_cmd_parm {int * pbuf; scalar_t__ sz; int i_cid; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 int WDG_WK_CID ;
 int _DRV_INT_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct drvint_cmd_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd_ex (struct cmd_priv*,struct cmd_obj*) ;

void r8712_wdg_wk_cmd(struct _adapter *padapter)
{
 struct cmd_obj *ph2c;
 struct drvint_cmd_parm *pdrvintcmd_param;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 pdrvintcmd_param = kmalloc(sizeof(*pdrvintcmd_param), GFP_ATOMIC);
 if (!pdrvintcmd_param) {
  kfree(ph2c);
  return;
 }
 pdrvintcmd_param->i_cid = WDG_WK_CID;
 pdrvintcmd_param->sz = 0;
 pdrvintcmd_param->pbuf = ((void*)0);
 init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvintcmd_param, _DRV_INT_CMD_);
 r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
}
