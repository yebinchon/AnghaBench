
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct TYPE_2__ {int curr_ch; } ;
struct _adapter {TYPE_1__ mppriv; struct cmd_priv cmdpriv; } ;
struct SetChannel_parm {int curr_ch; } ;


 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 int _SetChannel ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct SetChannel_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void r8712_SetChannel(struct _adapter *pAdapter)
{
 struct cmd_priv *pcmdpriv = &pAdapter->cmdpriv;
 struct cmd_obj *pcmd = ((void*)0);
 struct SetChannel_parm *pparm = ((void*)0);
 u16 code = GEN_CMD_CODE(_SetChannel);

 pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 if (!pcmd)
  return;
 pparm = kmalloc(sizeof(*pparm), GFP_ATOMIC);
 if (!pparm) {
  kfree(pcmd);
  return;
 }
 pparm->curr_ch = pAdapter->mppriv.curr_ch;
 init_h2fwcmd_w_parm_no_rsp(pcmd, pparm, code);
 r8712_enqueue_cmd(pcmdpriv, pcmd);
}
