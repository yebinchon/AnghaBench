
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disconnect_parm {int dummy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 int _DisConnect_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct disconnect_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void r8712_disassoc_cmd(struct _adapter *padapter)
{
 struct cmd_obj *pdisconnect_cmd;
 struct disconnect_parm *pdisconnect;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 pdisconnect_cmd = kmalloc(sizeof(*pdisconnect_cmd), GFP_ATOMIC);
 if (!pdisconnect_cmd)
  return;
 pdisconnect = kmalloc(sizeof(*pdisconnect), GFP_ATOMIC);
 if (!pdisconnect) {
  kfree(pdisconnect_cmd);
  return;
 }
 init_h2fwcmd_w_parm_no_rsp(pdisconnect_cmd, pdisconnect,
       _DisConnect_CMD_);
 r8712_enqueue_cmd(pcmdpriv, pdisconnect_cmd);
}
